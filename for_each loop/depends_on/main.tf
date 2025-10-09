resource "local_file" "whale" {
    filename = "/root/whale"
    content = "whale"
    depends_on = [local_file.krill]  # if resource krill below fails to create then so will this resource.
    }

resource "local_file" "krill" {
    filename = "/root/krill"
    content = "krill"
    
}
