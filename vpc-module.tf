module "vpc" {
  source = "./templates/vpc"

  instance-tenancy = "default"
  enable-dns-support = "true"
  vpc-name = "ican-vpc-dev"
  vpc-location = "Oregon-dev"
  region = "us-west-2"
  internet-gateway-name = "ican-igw-dev"
  map_public_ip_on_launch = "true"
  public-subnets-name = "ican-public-subnets-dev"
  public-subnets-location = "Oregon-dev"
  public-subnet-routes-name = "ican-public-subnet-routes-dev"
  private-subnets-location-name = "Oregon-dev"
  total-nat-gateway-required = "3"
  eip-for-nat-gateway-name = "ican-eip-ngw-dev"
  nat-gateway-name = "ican-ngw-dev"
  eip-required = "3"
  private-route-cidr = "0.0.0.0/0"
  private-subnet-name = "ican-private-subnet-dev"
  private-route-name = "ican-private-route-dev"
  vpc-cidr = "192.168.0.0/16"
  vpc-public-subnet-cidr = ["192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
  vpc-private-subnet-cidr = ["192.168.12.0/22","192.168.16.0/22","192.168.20.0/22"]
  number-of-public-subnets-required = "3"
  number-of-private-subnets-required = "3"

}
