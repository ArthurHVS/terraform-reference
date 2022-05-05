variable "windows_server_ami"{
  description = "AMI do Windows Server (2019, regiao sa-east-1)"
  type = string
  default = "ami-05a8ce58c531091f5"
}
variable "ubuntu_server_ami"{
  description = "AMI do Ubuntu Server (22.04 LTS, regiao sa-east-1)"
  type = string
  default = "ami-0deebba34ef22f5a9"
}
variable "instance_name" {
  description = "Nome da Instância"
  type        = string
  default     = "CONTAINER_HOST"
}
variable "access_key" {
  description = "AWS Acess Key"
  type = string
}
variable "secret_key" {
  description = "AWS Secret Key"
  type = string
}
