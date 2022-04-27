resource "aws_apigatewayv2_api" "this" {
    name = "${local.namespaced_service_name}-api"
    protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "this" {
    api_id = aws_apigatewayv2_api.this.id
    name = "$default"
    auto_deploy = true
}