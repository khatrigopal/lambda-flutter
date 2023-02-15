module "lambda" {
  filename                       = "../python/${var.filename}.zip"
  function_name                  = "${var.functionname}"
  handler                        = "${var.filename}"."${var.handler}"
  runtime                        = "python3.8"
}
