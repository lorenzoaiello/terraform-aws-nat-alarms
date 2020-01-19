output "alarm_dropped_packets" {
  value       = aws_cloudwatch_metric_alarm.dropped_packets
  description = "The CloudWatch Metric Alarm resource block for dropped packets"
}

output "alarm_error_allocating_ports" {
  value       = aws_cloudwatch_metric_alarm.error_allocating_ports
  description = "The CloudWatch Metric Alarm resource block for port allocation errors"
}
