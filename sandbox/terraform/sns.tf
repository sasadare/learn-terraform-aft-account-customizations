resource "aws_sns_topic" "sns-us-east-1" {
name = "my-topic-name"
}

resource "aws_sns_topic" "sns-us-west-2" {
name = "my-topic-name-1"
provider = aws.second

}