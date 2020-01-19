resource "aws_cloudwatch_metric_alarm" "dropped_packets" {
  alarm_name          = "${var.prefix}efs-${var.efs_id}-droppedPackets"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = var.evaluation_period
  metric_name         = "PacketsDropCount"
  namespace           = "AWS/NATGateway"
  period              = var.statistic_period
  statistic           = "Sum"
  threshold           = "0"
  alarm_description   = "The NAT Gateway is experiencing dropped packets."
  alarm_actions       = var.actions_alarm
  ok_actions          = var.actions_ok
}

resource "aws_cloudwatch_metric_alarm" "error_allocating_ports" {
  alarm_name          = "${var.prefix}efs-${var.efs_id}-errorAllocatingPorts"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = var.evaluation_period
  metric_name         = "ErrorPortAllocation"
  namespace           = "AWS/NATGateway"
  period              = var.statistic_period
  statistic           = "Sum"
  threshold           = "0"
  alarm_description   = "The NAT Gateway is experiencing errors allocating ports."
  alarm_actions       = var.actions_alarm
  ok_actions          = var.actions_ok
}