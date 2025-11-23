resource "aws_iam_user" "users" {
    for_each = toset(var.project-users) #variable is a list of IAM users. Will get rid of duplicates.
    name = each.value #loop through the individual names in the list and create a user for them.

}
