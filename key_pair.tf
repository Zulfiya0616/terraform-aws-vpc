resource "aws_key_pair" "class1" {
  key_name   = "class-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
