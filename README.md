# Provisioning TomCat web-server 
## using    Terraform | AWS | Ansible      
![images](https://github.com/Hassan-Ashraf-Elshennawy/TomCat-AWS-Terraform-Ansible-/assets/111524157/65633a1a-7144-4da1-ba34-079c0066aa5e)


![1_Rj0rUcoNRvcnTw8ZuQ6KyA](https://github.com/Hassan-Ashraf-Elshennawy/TomCat-AWS-Terraform-Ansible-/assets/111524157/6b4ff00c-172c-4086-966e-9e321120a064)






### 1. using Terraform to provision infrastructure (Network &Server) on cloud provider (AWS): 
###### Provider (AWS)
###### Provisioning Network include (vpc |  subnet  |  igw  |  route-table....binding-rout)
###### Create a Security Group and whitelist the port 22 & 8080
###### tls_private_key &aws_key_pair to generate key which used to ssh connection
###### Provision RHEL EC2 instance using REDHAT AMI ....(type)T2micro .
### using provisoner plugins to Fetch the Public IP and pass to ansible inventory file 

### Download terraform and install it in your path somewhere.
```
terraform apply
```
### 2. using Ansible to configure server(TomCat) :

A Step by Step Guide to Installing Apache Tomca
###### Step 1 – Install Java. Java is the primary requirement for running Tomcat 9 on CentOS 8 Linux system
###### Step 2 – Create Tomcat User. ...Group....File
###### Step 3 – Download Tomcat 9 Archive
###### Step 4: Create a Unit File to run Tomcat as a service instead of using shell scripts
###### This requires a systemd unit file in the /etc/systemd/system/ directory      
###### Step 5 – reload systemctl to ensure that the new changes are acknowledged by the system
###### Step 6 – start the Tomcat service

###### We don't need to know the details of any configuration installation also we don't need to know all ansible module We can search the installation steps convert it to ansible module

check ansible-playbook syntax
```
cd ansible
ansible-playbook --private-key aws_keys_pairs.pem site.yml --syntax-check
```
Run Ansible PLAYBOOK
```
ansible-playbook site.yml
```
![Screenshot from 2023-07-13 22-53-12](https://github.com/Hassan-Ashraf-Elshennawy/HHH/assets/111524157/d7f6cd01-b3e4-4c0c-9ac2-eeb26a5cb16b)

### TOMCat Server
      hit url.. serverip:8080 on your browser

![Screenshot from 2023-07-13 22-58-27](https://github.com/Hassan-Ashraf-Elshennawy/HHH/assets/111524157/1c37ddf0-0cae-408d-b4dc-236cfddc1f6c)


### Congratulations

![Screenshot from 2023-07-13 22-57-59](https://github.com/Hassan-Ashraf-Elshennawy/HHH/assets/111524157/e3b5f36f-2201-4b01-858a-f9e1af5b4cde)





