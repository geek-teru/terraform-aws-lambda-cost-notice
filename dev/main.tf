module "cost_notice_lambda" {
  source = "../modules/lambda"

  lambda_vars = var.cost_notice_lambda_vars
  event_rule_arn = module.cost_notice_cloudwatch_event.event_rule_arn
}

module "cost_notice_cloudwatch_event" {
  source = "../modules/cloudwatch_event"

  cloudwatch_event_vars = var.cost_notice_cloudwatch_event_vars
  lambda_function_arn = module.cost_notice_lambda.lambda_function_arn
}
