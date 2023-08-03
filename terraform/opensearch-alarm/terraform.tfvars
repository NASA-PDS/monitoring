alarms = [
  {
    name        = "EN-DELTA"
    domain_name = "en-delta"
    threshold   = 30000
    node_abbr   = "en"
    venue       = "delta"
    component   = "en-delta-storagespace-monitor"
  },
  {
    name        = "EN-PROD"
    domain_name = "en-prod"
    threshold   = 30000
    node_abbr   = "en"
    venue       = "prod"
    component   = "en-prod-storagespace-monitor"
  },
  {
    name        = "ATM-PROD"
    domain_name = "atm-prod"
    threshold   = 45000
    node_abbr   = "atm"
    venue       = "prod"
    component   = "atm-prod-storagespace-monitor"
  },
  {
    name        = "ATM-DELTA"
    domain_name = "atm-delta"
    threshold   = 30000
    node_abbr   = "atm"
    venue       = "delta"
    component   = "atm-delta-storagespace-monitor"
  },
  {
    name        = "IMG-PROD"
    domain_name = "img-prod"
    threshold   = 30000
    node_abbr   = "img"
    venue       = "prod"
    component   = "img-prod-storagespace-monitor"
  },
  {
    name        = "GEO-PROD"
    domain_name = "geo-prod"
    threshold   = 75000
    node_abbr   = "geo"
    venue       = "prod"
    component   = "geo-prod-storagespace-monitor"
  },
  {
    name        = "NAIF-PROD"
    domain_name = "naif-prod"
    threshold   = 30000
    node_abbr   = "naif"
    venue       = "prod"
    component   = "naif-prod-storagespace-monitor"
  },
  {
    name        = "PPI-PROD"
    domain_name = "ppi-prod"
    threshold   = 30000
    node_abbr   = "ppi"
    venue       = "prod"
    component   = "ppi-prod-storagespace-monitor"
  },
  {
    name        = "PSA-PROD"
    domain_name = "psa-prod"
    threshold   = 30000
    node_abbr   = "psa"
    venue       = "prod"
    component   = "psa-prod-storagespace-monitor"
  },
  {
    name        = "RMS-PROD"
    domain_name = "rms-prod"
    threshold   = 30000
    node_abbr   = "rms"
    venue       = "prod"
    component   = "rms-prod-storagespace-monitor"
  },
  {
    name        = "SBNPSI-PROD"
    domain_name = "sbnpsi-prod"
    threshold   = 30000
    node_abbr   = "sbnpsi"
    venue       = "prod"
    component   = "sbnpsi-prod-storagespace-monitor"
  },
  {
    name        = "SBNUMD-PROD"
    domain_name = "sbnumd-prod"
    threshold   = 30000
    node_abbr   = "sbnumd"
    venue       = "prod"
    component   = "sbnumd-prod-storagespace-monitor"
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
