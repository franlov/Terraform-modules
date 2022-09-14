resource "aws_instance" "web" {
  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = "${var.instance_type}"
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]
  key_name               = "${var.project_name}-${var.environment}"
  
  tags = {
    Name = "${var.project_name}-${var.environment}"
  }
}

module "keypair" { 
  source = "github.com/franlov/Terraform-module-keypair"
  project_name = "${var.project_name}"
  environment = "${var.environment}"
  key_name = "${var.project_name}-${var.environment}"
  key_public = "${var.key_public}"
}
