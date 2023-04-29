data "aws_ami" "centos_image" {
  owners      = ["self"]
  most_recent = true
  filter {
    name   = "name"
    values = ["terraform-terragrunt-server-backup"]
  }

}