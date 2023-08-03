# Terraform to Deploy Provenance Monitoring Alarm

The purpose of this cloudwatch metric alarm is to monitor provenance script failures.

## Prerequisites
- Terraform
- AWS CLI (optional)

## Steps to Deploy Provenance CloudWatch Alarm using Terraform (locally)

1. Open a terminal and set the following environment variables with correct values associated with your AWS account :

```shell
export AWS_ACCESS_KEY_ID=<access-key-id>
export AWS_SECRET_ACCESS_KEY=<secret-access-key>
export AWS_SESSION_TOKEN=<temp-session-token>
export AWS_DEFAULT_REGION=us-west-2
```

 Alternatively, you can also export your profile

```
export AWS_PROFILE=<profile_name>
```

2. Clone this repo into your local git repo :

```
git clone https://github.com/NASA-PDS/monitoring.git
```

3. Change current working directory to your local git working directory :

```
cd monitoring/terraform/provenance-alarm
```

4. Execute the following TF commands :

```
terraform init
```

```
terraform validate
```

```
terraform plan
```

```
terraform apply
```

**Note:**

1. You should only pass the **-auto-approve** flag while running `terraform apply` and `terraform destroy` if you've already reviewed the changes and are sure you want those changes to get applied.

2. Your assumed IAM role may or may not have permissions to create resources within AWS in which case you will get a `AuthorizationError`.
