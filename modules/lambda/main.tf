
resource "aws_lambda_function" "this" {
   filename                       = var.filename
   function_name                  =  var.function_name
   role                           =  var.role_arn
   handler                        =  var.handler
   runtime                        = "python3.8"
   source_code_hash =               data.archive_file.lambda_archives.output_base64sha256
   
   
          
}
