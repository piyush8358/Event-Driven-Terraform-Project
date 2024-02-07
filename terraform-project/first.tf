# Terraform Configuration File

# Specify the required providers and their versions
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.11"
    }
  }
}

# Configure the AWS provider with authentication details and region

provider "aws" {
  region     = "ap-south-1"
  access_key = var.Aws_secret_id
  secret_key = var.Aws_secret_key
}

# Define an AWS EC2 instance resource with associated configurations

resource "aws_instance" "os2" {
  instance_type = "t2.micro"
  count         = 1
  ami           = var.amiId
  tags = {
    Name = var.osname
  }
  key_name               = var.keypair
  vpc_security_group_ids = [var.vpc_security_group_ids]


  # Configure SSH connection to the created EC2 instance
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("D:/teraform/terraform-project/tera.pem")
    host        = self.public_ip
  }

  # Use local-exec provisioner to copy files to the created EC2 instance

  provisioner "local-exec" {
    command = "scp -r -o StrictHostKeyChecking=no -i 'tera.pem' 'project' ec2-user@${aws_instance.os2[0].public_ip}:~/"
  }

# Use remote-exec provisioner to run commands on the created EC2 instance

  provisioner "remote-exec" {
    inline = [


      "sudo yum install docker -y",
      "sudo systemctl enable docker --now",
      "sudo docker run -dit --name mywebserver -p 80:80 -v ~/:/var/www/html centos:7",
      "sudo docker exec mywebserver yum install httpd -y",
      # "sudo docker exec mywebserver sh -c 'echo This is working > /var/www/html/index.html'",
      "sudo docker exec mywebserver sed -i 's|/var/www/html|/var/www/html/project|' /etc/httpd/conf/httpd.conf",
      "sudo docker exec mywebserver httpd "

    ]
  }
}

#AWS EBS volume resource block

resource "aws_ebs_volume" "myvol" {
  availability_zone = aws_instance.os2[0].availability_zone
  size             = 1  # Size in GB
  tags = {
    Name = "mywebvol"
  }
}



resource "aws_volume_attachment" "my_ebs_attach_ec2" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.myvol.id
  instance_id = aws_instance.os2[0].id
}







