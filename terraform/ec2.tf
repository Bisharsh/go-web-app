module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "github-actions-selfhosted-agent"

  instance_type          = "t2.micro"
  key_name               = "Agent1"
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.all_worker_mgmt.id]
  subnet_id              = module.vpc.public_subnets[0]   

  associate_public_ip_address = true 

  ami                    = "ami-0d7d1c852f6af9831"

  tags = {
    Terraform   = "true"
    # purpose = "github-actions-agent"
  }
}
