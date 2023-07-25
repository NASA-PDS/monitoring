variable "aws_region" {
  type        = string
  default     = "us-west-2"
  description = "AWS Region"
}

variable "alarms" {
  type        = list(map(any))
  default     = []
  description = "List of alarms with domain_name and threshold"
}

variable "client_id" {
  type        = number
  default     = 123456
  description = "Account # of where the OpenSearch domain resides"
}

variable "comparison_operator" {
  type        = string
  default     = "comparison_operator"
  description = "Comparison operator for the alarm"
}

variable "datapoints_to_alarm" {
  type        = number
  default     = 1
  description = "Datapoints for the alarm"
}

variable "evaluation_periods" {
  type        = number
  default     = 1
  description = "Number of evaluation periods for the alarm"
}

variable "metric_name" {
  type        = string
  default     = "metric_name"
  description = "Name of the metric"
}

variable "namespace" {
  type        = string
  default     = "namespace"
  description = "Namespace of the metric"
}

variable "period" {
  type        = number
  default     = 60
  description = "Period of the metric (in seconds)"
}

variable "statistic" {
  type        = string
  default     = "Sum"
  description = "Statistic of the alarm"
}

variable "treat_missing_data" {
  type        = string
  default     = "ignore"
  description = "Value for how to treat missing data"
}

variable "alarm_actions" {
  type        = list(any)
  default     = []
  description = "List of actions to perform when the alarm state is triggered"
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