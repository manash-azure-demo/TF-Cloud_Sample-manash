resource "null_resource" "tfc_test" {


  count = 50



  provisioner "local-exec" {

    command = "echo 'Test ${count.index}'"
  }
}
terraform {
  cloud {
    organization = "Manash1"

    workspaces {
      name = "TF-Cloud_Sample-manash"
    }
  }
}   