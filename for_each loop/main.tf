#this for_loop is useful for creating multiple users as it does so by looping through a list in the variables.tf then creating each user
resource "local_sensitive_file" "name" {
    for_each = toset(var.users) #for_each loops over sets so the toset is turning var.users in to a set as it is a list at the moment
    filename = each.value       #each value in the list is referenced as each.value
    content = var.content       #takes variable content in variables.tf file as content value. This is a password 
}