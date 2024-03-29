# AWS EC2 Module

This module creates an AWS EC2 instance.

## Usage

```hcl
module "ec2" {
 source = "../modules/aws-ec2"

 ami_id = "ami-0c94855ba95c574c"
 instance_type = "t2.small"
 instance_name = "example-instance"
}
```

### Inputs

- **ami_id**: The ID of the AMI to use for the instance.
- **instance_type**: The type of instance to launch. Default is `t2.micro`.
- **instance_name**: The name of the instance.

### Outputs

- **instance_id**: The ID of the EC2 instance created.
- **instance_public_ip**: The public IP address of the instance.

## License

This module is licensed under the Apache-2.0 license.
