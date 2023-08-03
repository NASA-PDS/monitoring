# Terraform to Deploy OpenSearch FreeStroageSpace Monitoring Alarm

The purpose of this cloudwatch metric alarm is to monitor FreeStroageSpace metric for all OpenSearch Domains.

## Prerequisites
- Terraform
- AWS CLI (optional)

## Steps to Deploy OpenSearch CloudWatch Alarm using Terraform (locally)

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
cd monitoring/terraform/opensearch-alarm
```

4. You will need to create a local `terraform.tfvars` file under `.\terraform\openserach-alarm\terraform.tfvars`. This file will hold your variable values as shown below (these are dummy values, please ensure these values match your AWS account setup) :

```
alarms = [
  {
    name        = "DOMAIN-1"
    domain_name = "domain-1"
    threshold   = 12345
  },
  {
    name        = "DOMAIN-2"
    domain_name = "domain-2"
    threshold   = 12345
  }
]
client_id           = 12345678901
comparison_operator = "LessThanOrEqualToThreshold"
datapoints_to_alarm = 1
evaluation_periods  = 1
metric_name         = "FreeStorageSpace"
namespace           = "AWS/ES"
period              = 300
statistic           = "Average"
treat_missing_data  = "ignore"
```

5. Execute the following TF commands :

```
terraform init
```

```
terraform validate
```

```
terraform plan -var-file=terraform.tfvars
```

```
terraform apply -var-file=terraform.tfvars
```

**Note:**

1. You should only pass the **-auto-approve** flag while running `terraform apply` and `terraform destroy` if you've already reviewed the changes and are sure you want those changes to get applied.

2. Your assumed IAM role may or may not have permissions to create resources within AWS in which case you will get a `AuthorizationError`.
