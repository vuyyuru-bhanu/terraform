variable "region" {
    type = string
  
}

variable "primary_vpc" {
    type = object({
      name = string
      cidr_block = string
    })
  
}

variable "secondary_vpc" {
    type = object({
      name = string
      cidr_block = string
    })
  
}

variable "primary_subnet" {
    type = object({
      name = list(string)
      cidr_block = list(string)
    })
  
}

variable "secondary_subnet" {
    type = object({
      name = list(string)
      cidr_block = list(string)
    })
  
}