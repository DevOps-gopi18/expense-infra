variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "domain_name" {
    default = "chandus18.online"
}

variable "zone_id" {
    default = "Z00708193NHV5EQEJBFMQ"
}