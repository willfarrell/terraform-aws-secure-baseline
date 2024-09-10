
resource "aws_athena_workgroup" "default" {
  name = "primary"

  configuration {
    publish_cloudwatch_metrics_enabled = true # Security hub Athena.4
    result_configuration {
      encryption_configuration {
        encryption_option = "SSE_S3"
      }
    }
  }

  tags = var.tags
  #force_destroy = true # primary can't be deleted
}
