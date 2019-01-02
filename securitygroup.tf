resource "aws_security_group" "instance-sg" {
  vpc_id = "${aws_vpc.main.id}"
  name = "instance-sg"
  description = "security group for instances"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  } 

  ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

tags {
    Name = "instance-sg"
  }
}



