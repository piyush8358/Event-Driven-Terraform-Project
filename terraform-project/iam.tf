# resource "aws_iam_role" "SSMRoleForEC2" {
#   name = "ssmroleforece"
#   assume_role_policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "ssm.amazonaws.com"
#       },
#       "Action": "sts:AssumeRole"
#     }
#   ]
# }
# EOF
# }

# resource "aws_iam_instance_profile" "SSMRoleForEC2" {
#   name = "SSMRoleForEC2"
#   role = aws_iam_role.SSMRoleForEC2.name
# }

# resource "aws_iam_role_policy_attachment" "aws_iam_role_policy_attachment" {
#   for_each    = toset([
#     "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
#     "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
#   ])
#   role       = aws_iam_role.SSMRoleForEC2.arn  # Use ARN instead of name
#   policy_arn = each.value
# }
