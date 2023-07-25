data "aws_sns_topic" "provenance_sns_topic" {
  name = "pds-provenance-alarm"
}

resource "aws_cloudwatch_metric_alarm" "es_alarm" {
  count                     = length(var.alarms)
  alarm_name                = "${var.alarms[count.index]["name"]}-FreeStorageSpace-Alarm"
  comparison_operator       = var.comparison_operator
  datapoints_to_alarm       = var.datapoints_to_alarm
  evaluation_periods        = var.evaluation_periods
  metric_name               = var.metric_name
  namespace                 = var.namespace
  period                    = var.period
  statistic                 = var.statistic
  threshold                 = var.alarms[count.index]["threshold"]
  treat_missing_data        = var.treat_missing_data
  alarm_description         = "Alarm to monitor available storage space for ${var.alarms[count.index]["name"]} cluster. Please consider increasing volume size for your nodes."
  alarm_actions             = [data.aws_sns_topic.provenance_sns_topic.arn]
  ok_actions                = var.ok_actions
  insufficient_data_actions = var.insufficient_data_actions

  dimensions = {
    DomainName = var.alarms[count.index]["domain_name"]
    ClientId   = var.client_id
  }
}
