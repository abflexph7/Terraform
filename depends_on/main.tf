resource "local_file" "whale" {
    filename = "/root/whale"
    content = "whale"
    depends_on = [local_file.krill] # if the resource below fails to create then this will also fail
    }

resource "local_file" "krill" {
    filename = "/root/krill"
    content = "krill"
    
}
