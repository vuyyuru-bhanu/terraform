variable "vpcaws" {
    type = object({
      name = string
      cidr_block = string
    })
  
}

variable "awssubnet" {
          type = object({
          name = string
            
            availability_zone = list(string)
           })
}