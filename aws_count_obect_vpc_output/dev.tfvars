region                = "ap-south-1"
vpcaws                = {
                            name = "testvpc"
                            cidr_block = "192.168.0.0/16"
                        }

awssubnet             = {
                           name = "subnet"
                           availability_zone =  [ "ap-south-1a", "ap-south-1b", "ap-south-1c" ]
                        }