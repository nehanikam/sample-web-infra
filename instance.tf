resource "aws_instance" "azlinux2-01" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = "${aws_subnet.main-public-1.id}"

  # the security group
  vpc_security_group_ids = ["${aws_security_group.instance-sg.id}"]

  # the public SSH key
  key_name = "${aws_key_pair.tf-infra-kp.key_name}"


  tags {
    Name = "sample-web-01"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y"
    ]
  }
  connection {
    user = "${var.INSTANCE_USERNAME}"
    private_key = "${file("${var.PATH_TO_PRIVATE_KEY}")}"
  }
}


resource "aws_instance" "azlinux2-02" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = "${aws_subnet.main-public-1.id}"

  # the security group
  vpc_security_group_ids = ["${aws_security_group.instance-sg.id}"]

  # the public SSH key
  key_name = "${aws_key_pair.tf-infra-kp.key_name}"


  tags {
    Name = "sample-web-02"
  }

  
  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y "
    ]
  }
  connection {
    user = "${var.INSTANCE_USERNAME}"
    private_key = "${file("${var.PATH_TO_PRIVATE_KEY}")}"
  }
}