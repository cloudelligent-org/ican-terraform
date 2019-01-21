module "ec2-app-v1" {
  source = "./templates/ec2"
  region = "us-west-2"
  key-name = "ican-demo"
  ami-id = "ami-08935252a36e25f85"
  instance-type = "t2.micro"
  number-of-ec2-instances-required = "3"
  public-key-file-name = "${file("./modules/ec2/ican-demo.pub")}"
  user-data = "${file("./modules/ec2/httpd.sh")}"
  instance-name-taq = "ican-demo"
  vpc-security-group-ids = "${module.ican-ec2-sg.ec2-sg-security-group}"
  ec2-subnets-ids = ["${module.vpc.public-subnet-ids}"]
  associate-public-ip-address = "true"
  #IN CASE OF LAUNCHING EC2 IN SPECIFIC SUBNETS OR PRIVATE SUBNETS, PLEASE UN-COMMENT BELOW"
  #ec2-subnets-ids = ["${module.cloudelligent-vpc.private-subnet-ids}"]
  #ec2-subnets-ids = ["","","","","",""]
}