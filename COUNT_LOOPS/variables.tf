variable "instance" {
    type = list
    default = ["mongodb","redis","mysql"]
}

variable "zone_id" {
    default = "Z02576572D1LRE8SSISM3"
}

variable "domain_name" {
    default = "aashvi.fun"
}