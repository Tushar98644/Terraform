module "ec2" {
 source = "../../modules/aws-ec2"

 ami_id = "ami-0c94855ba95c574c"
 instance_type = "t2.micro"
 instance_name = "dev-instance"
}