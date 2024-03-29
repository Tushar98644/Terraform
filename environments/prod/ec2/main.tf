module "ec2" {
 source = "../../../modules/aws-ec2"

 ami_id = "ami-007020fd9c84e18c7"
 instance_type = "t2.micro"
 instance_name = "prod-instance"
}