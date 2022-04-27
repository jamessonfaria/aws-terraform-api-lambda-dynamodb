resource "aws_ssm_parameter" "table" {
    name = "${local.namespaced_service_name}-dynamodb-table"
    type = "String"
    value = aws_dynamodb_table.this.name
}