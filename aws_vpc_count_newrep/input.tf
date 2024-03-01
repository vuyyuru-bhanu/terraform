variable "region" {
    type = string
  
}
variable "vpc_range" {
  type = string
}

variable "subnet_name" {
  type = list(string)

}
variable "availability" {
    type = list(string)
  
}