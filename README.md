# terraform-aws-vpc-basic

## Description
Simple Terraform module to provision AWS VPC, Subnet, and EC2.

## Usage

```hcl
module "vpc_basic" {
  source         = "github.com/<your-username>/terraform-aws-vpc-basic"
  vpc_cidr       = "10.0.0.0/16"
  subnet_cidr    = "10.0.1.0/24"
  ami_id         = "ami-xxxxxxxxxxxxxx"
  instance_type  = "t2.micro"
}
```

## Input Variables

| Name          | Description          | Default       |
|---------------|----------------------|---------------|
| vpc_cidr      | VPC CIDR block       | 10.0.0.0/16   |
| subnet_cidr   | Subnet CIDR block    | 10.0.1.0/24   |
| ami_id        | AMI ID               | ami-0c55b159cbfafe1f0 |
| instance_type | EC2 instance type    | t2.micro      |

## Output Values

- `vpc_id`
- `subnet_id`
- `instance_id`