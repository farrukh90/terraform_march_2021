vpc_config = {
  region        = "us-east-2"
  vpc_cidr      = "192.168.0.0/16"
  public_cidr1  = "192.168.1.0/24"
  public_cidr2  = "192.168.2.0/24"
  public_cidr3  = "192.168.3.0/24"
  private_cidr1 = "192.168.101.0/24"
  private_cidr2 = "192.168.102.0/24"
  private_cidr3 = "192.168.103.0/24"
}

tags = {
  Name        = "QA_Project"
  Environment = "QA"
  Team        = "DevOps"
  Created_by  = "Farrukh"
  Department  = "IT"
  Bill        = "CFO"
}