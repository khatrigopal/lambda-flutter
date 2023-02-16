
resource "aws_lambda_function" "this" {
   filename                       = var.filename
   function_name                  =  var.function_name
   role                           =  var.role_arn
   handler                        =  var.handler
   runtime                        = "python3.8"
   depends_on                     = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
          
}
