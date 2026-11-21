# Project 4: IAM User Automation with Terraform

## Description

Created an AWS IAM user using Terraform and attached a custom S3 read-only policy. Automated IAM user creation and permission management using Infrastructure as Code.

## Objectives

- Automate IAM user creation using Terraform.
- Create a custom S3 read-only IAM policy.
- Attach the policy to the IAM user.
- Verify permissions using AWS CLI.

## AWS Configuration

- AWS Region: ap-south-1
- IAM User: terraform-s3-reader-amish
- Policy: terraform-s3-reader-amish-s3-read-policy

## AWS Resources

- AWS IAM User
- AWS IAM Policy
- IAM User Policy Attachment

## Permissions

Allowed:
- s3:ListBucket
- s3:GetObject

Denied by absence of an Allow:
- s3:PutObject
- s3:DeleteObject

## Project Structure

- providers.tf
- variables.tf
- main.tf
- outputs.tf
- terraform.tfvars
- s3-read-policy.json
- README.md
- screenshots/

## Deployment

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
