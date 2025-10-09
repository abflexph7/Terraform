resource "aws_iam_user" "users" {
    for_each = toset(var.project-sapphire-users) #variable is a list of IAM users.
    name = each.value

}
