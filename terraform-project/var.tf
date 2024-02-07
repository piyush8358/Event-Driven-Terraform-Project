variable "Aws_secret_id" {
 default="*Replace with your's*" 
 sensitive = true
}
  
variable "Aws_secret_key" {
    default = " Replace with you"
    sensitive = true
}

variable "vpc_security_group_ids" {
  default = "sg-0893b230455e7a4c3"
}
variable "amiId" {
  default = "ami-00952f27cf14db9cd"
}
variable "keypair" {
  default = "tera"
}
variable "osname" {
    default = "teraform"
    
  
}
# variable "host" {
#   default = self.public_ip
# }

# variable "bucket_name" {
  
# }
