module "vpn" {
  source = "./modules/vpn"

  region = "us-west-2"
  customer-gateway-static-public-ip = "119.153.176.6"
  customer-gateway-name = "Texas-office-dev"
  vpn-connection-name = "Texas-office-vpn-connection-dev"
  vpc-id = "${module.vpc.vpc-id}"
  vpn-gateway-id = "${module.vgw.vgw}"
  data-center-private-cidr = "192.168.0.0/16"

}
