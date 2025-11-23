#this for_loop is useful for creating multiple users as it does so by looping through a list in the variables.tf then creating each user
resource "local_sensitive_file" "name" {
    filename = var.users[count.index] #creates a count with index for var.users
    count = length(var.users)       #loops through var.users
    content = var.content       #takes variable content in variables.tf file as content value. This is a password 
}