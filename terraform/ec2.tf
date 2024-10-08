module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "github-actions-selfhosted-agent"

  instance_type          = "t2.micro"
  key_name               = "Agent1"
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.all_worker_mgmt.id]
  subnet_id              = module.vpc.private_subnets

  tags = {
    Terraform   = "true"
    purpose = "github-actions-agent"
  }
}