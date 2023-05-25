resource "aws_cloudwatch_metric_alarm" "provenance_alarm" {
  alarm_name                            = "provenance-script-failure"
  comparison_operator                   = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm                   = 1
  evaluation_periods                    = 1
  metric_name                           = "provenance_failures"
  namespace                             = "pds_en_registry_provenance"
  period                                = 300
  statistic                             = "Sum"
  threshold                             = 1
  treat_missing_data                    = "ignore"
  alarm_description                     = "Provenance script failure alarm. Check logs at /ecs/pds-en-provenance-failure-logs"
  alarm_actions                         = [aws_sns_topic.provenance_sns_topic.arn]
  ok_actions                            = var.ok_actions
  insufficient_data_actions             = var.insufficient_data_actions
  evaluate_low_sample_count_percentiles = "evaluate"
  # evaluate_low_sample_count_percentiles = "evaluate" -- This option can not be applied with statistic Sum. This option is enabled only for percentile statistics.

  depends_on = [
    aws_sns_topic.provenance_sns_topic,
    aws_sns_topic_subscription.provenance_topic_subscription
  ]

  tags = {
    Alfa    = var.node_name_abbr
    Bravo   = var.venue
    Charlie = var.component
  }
}

resource "aws_cloudwatch_log_group" "provenance_logs" {
  name              = "/ecs/pds-en-provenance-failure-logs"
  retention_in_days = 7

  tags = {
    Alfa    = var.node_name_abbr
    Bravo   = var.venue
    Charlie = var.component
  }
}

resource "aws_sns_topic" "provenance_sns_topic" {
  name              = "provenance_failure_test"
  display_name      = "prov_alarm_test"
  kms_master_key_id = "alias/pdscloud"

  tags = {
    Alfa    = var.node_name_abbr
    Bravo   = var.venue
    Charlie = var.component
  }
}

resource "aws_sns_topic_subscription" "provenance_topic_subscription" {
  topic_arn = aws_sns_topic.provenance_sns_topic.arn
  protocol  = "email"
  endpoint  = "pds-prod-notify@jpl.nasa.gov"

  depends_on = [
    aws_sns_topic.provenance_sns_topic
  ]
}