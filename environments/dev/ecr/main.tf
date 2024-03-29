module "ecr" {
 source = "../../modules/aws-ecr"

 repository_name = "dev-repo"
}