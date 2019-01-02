output "instance-1" {
  value = "${aws_instance.azlinux2-01.public_ip}"
}

output "instance-2" {
  value = "${aws_instance.azlinux2-02.public_ip}"
}
