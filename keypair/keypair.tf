resource "aws_key_pair" "keypair" {
  key_name   = "${var.project_name}-${var.environment}"
  public_key = "AQUI-TU-SSH-RSA-KEY"
}
