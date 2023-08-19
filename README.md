# github-infra-config
Provisioned GH infra

## Prerequisites
In order to provision the resources locally you have to make sure of the following items:

- You should have set up the AWS CLI and have it configured with proper S3, DynamoDB and SSM permissions.
- GH token with permissions the following permissions:
  - repo
  - workflow
  - admin:org
  - admin:repo_hook
  - admin:org_hook
  - delete_repo 
- GH token stored in SSM Parameter Store as `SecureString` with the name `gh-token`.
