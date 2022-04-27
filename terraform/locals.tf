locals {
    lambdas_path  = "${path.module}/lambdas"
    layers_path   = "${path.module}/layers"

    common_tags = {
        Project     = "Serverless REST API Tutorial"
        CreatedAt   = formatdate("YYYY-MM-DD", timestamp())
        ManagedBy   = "Terraform"
        Owner       = "Jamesson Faria" 
        Env         = var.env
    }
}