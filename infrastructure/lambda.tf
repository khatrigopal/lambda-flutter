data "archive_file" "lambda_function_1" {
  type        = "zip"
  source_file  = "${path.module}/code/lambda_function_1.py"
  output_path = "${path.module}/lambda_function_1.zip"
}

module "lambda_function_1" {
  source         = "../modules/lambda"
  filename       = data.archive_file.lambda_function_1.output_path
  function_name  = "lambda_function_1"
  handler        = "lambda_function_1.handler"
  timeout        = 10
}

