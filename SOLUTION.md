# Lab M4.02 - Terraform Variables & Parameterization
 
## Overview

Multi-environment S3 bucket deployment using Terraform variables.
 
## Environments

- **Dev:** myapp-jcaa-bootcamp-0702026-dev-bucket (no versioning)
- **Prod:** myapp-jcaa-bootcamp-072026-prod-bucket (versioning enabled)
 
## Usage
 
### Deploy Dev

```bash
terraform apply -var-file="dev.tfvars"
```

Output: 

![Terraform apply output - Dev Environment](screenshots/01-terraform-apply-success-dev.png)
 

Verify Dev Development: 

![Upload Test File](screenshots/02-upload-file-dev.png)
 
 
 
### Deploy Prod

```bash
terraform workspace select prod
terraform apply -var-file="prod.tfvars"
```

Output: 

![Terraform apply output - Prod Environment](screenshots/03-terraform-apply-success-prod.png)


Verify Prod Development: 

![Upload Test File](screenshots/04-versioning-prod-bucket.png)

### Comparison 

![Environment comparison](screenshots/06-versioning-comparison.png)
 
## AWS Console verification

![S3 Console](screenshots/05-s3-aws-console.png) 
 
## Variables

- `environment`: dev/staging/prod
- `bucket_prefix`: Bucket name prefix
- `enable_versioning`: Enable S3 versioning
- `aws_region`: AWS region
- `tags`: Resource tags
 
## Outputs

- `bucket_id`: Bucket name
- `bucket_arn`: Bucket ARN
- `versioning_enabled`: Versioning status
