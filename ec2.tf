resource "aws_instance" "web_server" {
  ami           = "ami-0507f77897697c4ba"
  instance_type = "t2.micro"
  subnet_id =aws_subnet.main.id
  key_name ="aws_keys_pairs"
  vpc_security_group_ids =[aws_security_group.security_group.id]
  associate_public_ip_address=true
  tags = {
    Name = "web_server"
  }
    # Store private key :  Generate and save private key(aws_keys_pairs.pem) in current directory 
    #fetch the IP address from a newly provisioned server and store in inventory file
  provisioner "local-exec" {   
     interpreter = ["/bin/bash" ,"-c"]
    command = <<-EOT
      echo '${tls_private_key.terrafrom_generated_private_key.private_key_pem}' > aws_keys_pairs.pem
      chmod 400 aws_keys_pairs.pem
      echo '${aws_instance.web_server.public_ip}' > ./ansible/inventory
    EOT
   



    }
}





    