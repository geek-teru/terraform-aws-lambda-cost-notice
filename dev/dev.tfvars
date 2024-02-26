# lambda
cost_notice_lambda_vars = {
  package_type        = "zip"
  package_source_dir  = "./package"
  package_output_path = "./package.zip"
  function_name    = "cost-notice-function"
  handler          = "itemized_cost_notice.lambda_handler"
  runtime          = "python3.11"
  timeout_sec      = 60
  role_arn         = "arn:aws:iam::775538353788:role/lambda-cost-notice"
}

# event bridge
cost_notice_cloudwatch_event_vars = {
  name        = "cost-notice-schedule"
  description = "Invoke lambda function every hour", 
  schedule_expression = "cron(0 0 * * ? *)" # UTCの0時、JSTの9時
}
