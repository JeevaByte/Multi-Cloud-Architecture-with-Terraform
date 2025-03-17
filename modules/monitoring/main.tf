resource "datadog_dashboard" "multicloud" {
  title       = "MultiCloud Dashboard"
  description = "Dashboard for monitoring multi-cloud infrastructure"
  
  template_variable {
    name    = "environment"
    prefix  = "env"
    default = var.environment
  }

  widget {
    timeseries_definition {
      title = "Cross-Cloud Metrics"
      request {
        q            = "avg:aws.ec2.cpuutilization{env:${var.environment}} by {host} + avg:azure.vm.processor_percentage{env:${var.environment}} by {host}"
        display_type = "line"
      }
    }
  }
}
