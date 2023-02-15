variable "filename" {
  description = "The filename of the Python file for the AWS Lambda function."
  default = ""
}

variable "function_name" {
  description = "The name of the AWS Lambda function."
  default = ""
}


variable "handler" {
  description = "The name of the Python function that AWS Lambda calls to start execution."
  type = string
  default = "hello"
}
