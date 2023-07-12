#cloud provider 
#credential canot hard coded
#   access_key = "my-access-key"
#   secret_key = "my-secret-key"

#config ~/.aws/credentials add your cerdntial 
provider "aws" {
  region     = "us-west-2"

}

#terraform inti to intialize your project  
#current directory must be your project

