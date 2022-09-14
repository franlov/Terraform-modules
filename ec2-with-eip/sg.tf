resource "aws_security_group" "sg" {
  name_prefix        = "${var.project_name}-${var.environment}-"
  description = "${var.project_name}-${var.environment}"
  vpc_id = "${data.aws_vpc.selected.id}" 

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
 tags = {
    Name = "${var.project_name}-${var.environment}"
  }

  lifecycle {

    create_before_destroy = true

  }


}

