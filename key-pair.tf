resource "aws_key_pair" "example" {
   key_name   = "${var.key_name}-v2"  # Add a suffix to make it unique
  public_key = file("id_rsa.pub")  # Reference the key in the same directory
}