# AWS ECR Module

This module creates an AWS ECR repository. It allows for the creation of a private Docker container registry that makes it easy to store, manage, and deploy Docker container images.

## Usage

```hcl
module "ecr" { 
source = "../modules/aws-ecr"

repository_name = "example-repo" 
image_tag_mutability = "IMMUTABLE" 
scan_on_push = false
}
```

### Inputs

- **repository_name**: The name of the ECR repository.
- **image_tag_mutability**: The mutability setting for the repository. Can be either `MUTABLE` or `IMMUTABLE`. Default is `MUTABLE`.
- **scan_on_push**: Indicates whether images are scanned after being pushed to the repository. Default is `true`.

### Outputs

- **repository_url**: The URL of the ECR repository.

## License

This module is licensed under the Apache-2.0 license.