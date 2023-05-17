variable "aws_region" {
  type        = string
  default     = "us-west-2"
  description = "AWS Region"
}

# variable "aws_shared_credentials_file" {
#   default = "~/.aws/credentials"
#   description = "AWS shared credentials file"
# }

# variable "aws_profile" {
#   default = "default"
#   description = "AWS profile"
#}

variable "node_name_abbr" {
  type        = string
  default     = "en"
  description = "Tag value for Alfa"
}

variable "venue" {
  type        = string
  default     = "prod"
  description = "Tag value for Beta"
}

variable "component" {
  type        = string
  default     = "provenance"
  description = "Tag value for Beta"
}

variable "insufficient_data_actions" {
  type        = list(any)
  default     = []
  description = "The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state."
}

variable "ok_actions" {
  type        = list(any)
  default     = []
  description = "The list of actions to execute when this alarm transitions into an OK state from any other state."
}