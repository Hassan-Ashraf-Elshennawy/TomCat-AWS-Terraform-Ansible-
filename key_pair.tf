resource "tls_private_key" "terrafrom_generated_private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "aws_key_pair" "generated_key" {
  key_name   = "aws_keys_pairs"
  public_key = tls_private_key.terrafrom_generated_private_key.public_key_openssh
}


