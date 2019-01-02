resource "aws_key_pair" "tf-infra-kp" {
  key_name = "tf-infra-kp"
  public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
}
