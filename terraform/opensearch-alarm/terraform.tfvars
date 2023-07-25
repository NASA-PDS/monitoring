alarms = [
  {
    name        = "EN-DELTA"
    domain_name = "en-delta"
    threshold   = 30000
  },
  {
    name        = "EN-PROD"
    domain_name = "en-prod"
    threshold   = 30000
  },
  {
    name        = "ATM-PROD"
    domain_name = "atm-prod"
    threshold   = 45000
  },
  {
    name        = "ATM-DELTA"
    domain_name = "atm-delta"
    threshold   = 30000
  },
  {
    name        = "IMG-PROD"
    domain_name = "img-prod"
    threshold   = 30000
  },
  {
    name        = "GEO-PROD"
    domain_name = "geo-prod"
    threshold   = 75000
  },
  {
    name        = "NAIF-PROD"
    domain_name = "naif-prod"
    threshold   = 30000
  },
  {
    name        = "PPI-PROD"
    domain_name = "ppi-prod"
    threshold   = 30000
  },
  {
    name        = "PSA-PROD"
    domain_name = "psa-prod"
    threshold   = 30000
  },
  {
    name        = "RMS-PROD"
    domain_name = "rms-prod"
    threshold   = 30000
  },
  {
    name        = "SBNPSI-PROD"
    domain_name = "sbnpsi-prod"
    threshold   = 30000
  },
  {
    name        = "SBNUMD-PROD"
    domain_name = "sbnumd-prod"
    threshold   = 30000
  }
]
client_id           = 445837347542
comparison_operator = "LessThanOrEqualToThreshold"
datapoints_to_alarm = 1
evaluation_periods  = 1
metric_name         = "FreeStorageSpace"
namespace           = "AWS/ES"
period              = 60
statistic           = "Sum"
treat_missing_data  = "missing"