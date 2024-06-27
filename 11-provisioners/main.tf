resource "aws_instance" "test" {
  ami                    = "ami-031d574cddc5bb371"
  instance_type          = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }
    inline = [
      "sudo dnf install nginx -y" ,
      "sudo systemctl start nginx"
    ]
  }

}

data "aws_security_group" "selected" {
  name = "allow-all"
}

# decouple the provisioners inthe following secenarios
# if provisioners fails the instance then we donot want to recreate my instance
# requriments emerge in the way that we need to re-run the provisioners again and again(meaning that provison commands we need to re-run again and again)

resource "aws_instance" "test1" {
  ami                    = "ami-031d574cddc5bb371"
  instance_type          = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.selected.id]
}
resource "null_resource" "provisioner" {
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.test1.public_ip
    }
    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}





