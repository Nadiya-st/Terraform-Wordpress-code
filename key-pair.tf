resource "aws_key_pair" "ssh_key" {
  key_name   = "ssh-key"
  public_key = file("~/.ssh/ssh-key.pub")
}