variable "filename" {
  description = "The filename of the Python file for the AWS Lambda function."
  default = ""
}

variable "function_name_1" {
  description = "The name of the AWS Lambda function."
  default = "lambda_function_1"
}

variable "function_name_2" {
  description = "The name of the AWS Lambda function."
  default = "lambda_function_2"
}

variable "role_arn" {
  description = "The ARN of the IAM role for the AWS Lambda function."
  default = ""
}

variable "handler" {
  description = "The name of the Python function that AWS Lambda calls to start execution."
  type = string
  default = "lambda_handler"
}
