#################################################################################################
# This file describes the DynamoDB resources: dynamodb table, dynamodb endpoint
#################################################################################################

#Dynamodb Table
resource "aws_dynamodb_table" "userdata" {
  name         = "userdata"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "email"
  attribute {
    name = "email"
    type = "S"
  }

}


#DynamoDB Endpoint
resource "aws_vpc_endpoint" "dynamodb_Endpoint" {
  vpc_id            = aws_vpc.vpc.id
  service_name      = "com.amazonaws.eu-west-3.dynamodb"
  vpc_endpoint_type = "Gateway"
  route_table_ids   = [aws_route_table.private.id]
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : "*",
        "Action" : "*",
        "Resource" : "*"
      }
    ]
  })
}