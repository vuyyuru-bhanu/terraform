variable "region" {
  type = string
}

variable "vpc" {
  type = object({
    name            = string
    cidr            = string
    public_subnets  = list(string)
    private_subnets = list(string)

  })

}
variable "ami-id" {
  type        = string
  description = "Ami id of ubuntu 22.04 in ap-south-1"

}