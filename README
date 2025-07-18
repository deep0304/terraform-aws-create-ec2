Working with the module to create the instance using the aws.

Not as the production level but for the learning purpose it could be beneficial.

```hcl
terraform {

}
provider "aws" {
  region = "us-east-1"
}

module "aws_working_instance" {
  source             = ".//terraform-aws-create-ec2 "
  key_name           = "key_name"
  security_group     = [security-group-list]
  instance_type_name = "instance name" #example = t2.micro

}

output "public_ip" {
  value = module.aws_working_instance.public_ip
}

```