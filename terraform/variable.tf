variable "access_key" {
    type = string
    description = "ncloud access key"
    sensitive = true
}

variable "secret_key" {
    type = string
    description = "ncloud secret key"
    sensitive = true
}

variable "region" {
    type = string
    description = "ncloud region"
}

variable "site" {
    type = string
    description = "ncloud site"
}

variable "support_vpc" {
    type = string
    description = "ncloud support vpc"
}
