resource "random_pet" "super_pet" {
    length = var.length
    prefix = var.prefix
    lifecycle {
      prevent_destroy = true #prevents this resource being destroyed regardless of if Terraform Apply or Destroy run
    }
}