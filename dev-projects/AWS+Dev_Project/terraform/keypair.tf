resource "aws_key_pair" "devops" {
  key_name   = "devops-project-key"
  public_key = file("~/.ssh/devops-project.pub")

  tags = {
    Name = "devops-project-key"
  }
}