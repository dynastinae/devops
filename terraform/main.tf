terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
    }
  }
  required_version = ">= 0.13"
}

// Configure the ncloud provider
provider "ncloud" {
  access_key  = var.access_key
  secret_key  = var.secret_key
  region      = var.region
  site        = var.site
  support_vpc = var.support_vpc
}

// Create a new server instance
resource "ncloud_server" "server" {
    name = "tf-test-vm1"
    server_image_product_code = "SPSW0LINUX000032"
    server_product_code = "SPSVRSTAND000004"

    tag_list {
      tag_key = "samplekey1"
      tag_value = "samplevalue1"
    }

    tag_list {
      tag_key = "samplekey2"
      tag_value = "samplevalue2"
    }
}