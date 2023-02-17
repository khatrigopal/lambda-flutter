data "archive_file" "lambda_function_1" {
  type        = "zip"
  source_dir  = "${path.module}/code"
  output_path = "${path.module}/lambda_function_1.zip"
  source_code_hash = data.archive_file.lambda_function_1.output_base64sha256|
}

module "lambda_function_1" {
  source         = "../modules/lambda"
  filename       = data.archive_file.lambda_function_1.output_path
  role_arn        =  "arn:aws:iam::558940753150:role/lambda-full-acces"
  function_name  = "lambda_function_1"
  handler        =  "lambda_function_1.lambda_handler"
  #source_code_hash = "${data.archive_file.lambda_function_1.output_base64sha256}"
  #source_code_hash = filebase64sha256(var.filename)
  #ignore_source_code_hash = true
  
}

data "archive_file" "lambda_function_2" {
  type        = "zip"
  source_dir  = "${path.module}/newcode"
  output_path = "${path.module}/lambda_function_2.zip"
}

module "lambda_function_2" {
  source         = "../modules/lambda"
  filename       = data.archive_file.lambda_function_2.output_path
  role_arn        =  "arn:aws:iam::558940753150:role/lambda-full-acces"
  function_name  = "lambda_function_2"
  handler        =  "lambda_function_2.hello"
  #source_code_hash = data.archive_file.lambda_function_1.output_base64sha256
  #source_code_hash = filebase64sha256(var.filename)
  
}

  
    
  
