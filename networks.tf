resource "aws_vpc" "main_vpc" {
  cidr_block = "172.32.0.0/16"
  tags = {
    Name = "main"
  }
}

resource "aws_security_group" "main_sg" {
  vpc_id = aws_vpc.main_vpc.id
  egress = [
    {
      cidr_blocks      = ["0.0.0.0/0", ]
      description      = "Regra de saida geral"
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    },
    {
      cidr_blocks      = ["0.0.0.0/0", ]
      description      = "Regra de saida RDP"
      from_port        = 3389
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 3389
    }
  ]
  ingress = [
    {
      cidr_blocks      = ["0.0.0.0/0", ]
      description      = "Regra de entrada protocolo RDP"
      from_port        = 3389
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 3389
    },
    {
      cidr_blocks      = ["0.0.0.0/0", ]
      description      = "Regra de entrada protocolo SSH"
      from_port        = 22
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 22
    }
  ]
  tags = {
    "Name" = "main"
  }
}
