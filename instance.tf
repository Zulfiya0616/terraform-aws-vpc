resource "aws_instance" "zulya-web" {
  ami           = "${data.aws_ami.centos.id}" 
  instance_type = "t2.micro"
  key_name  = "${aws_key_pair.class1.key_name}"
  vpc_security_group_ids = ["${aws_security_group.provisioner.id}"]
  subnet_id = "${aws_subnet.public1.id}"
}

resource "aws_instance" "zulya-web2" {
  ami           = "${data.aws_ami.centos.id}" 
  instance_type = "t2.micro"
  key_name  = "${aws_key_pair.class1.key_name}"
  vpc_security_group_ids = ["${aws_security_group.provisioner.id}"]
 
}
