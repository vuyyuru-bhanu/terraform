variable "region" {
    type = string
  
}
variable "network" {
    type = object({
      name         = string
      vpccidr      = string
      
      privatesub   = list(string)
      publicsub    = list(string)
    })
  
}