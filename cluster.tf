resource "aws_instance" "control_node" {
  ami = var.ami
  subnet_id = aws_subnet.cluster_subnet_a.id  
  associate_public_ip_address = true  
  instance_type = var.instance_type
  key_name = var.keys
  vpc_security_group_ids = [aws_security_group.cluster_sg.id]
  tags = {
    Name = "Control Node"
  }
}

resource "aws_instance" "worker_node_1" {
  ami = var.ami
  subnet_id = aws_subnet.cluster_subnet_a.id
  associate_public_ip_address = true
  instance_type = var.instance_type
  key_name = var.keys
  vpc_security_group_ids = [aws_security_group.cluster_sg.id]
  tags = {
    Name = "Worker Node 1"
  }
}

resource "aws_instance" "worker_node_2" {
  ami = var.ami
  subnet_id = aws_subnet.cluster_subnet_a.id
  associate_public_ip_address = true
  instance_type = var.instance_type
  key_name = var.keys
  vpc_security_group_ids = [aws_security_group.cluster_sg.id]
  tags = {
    Name = "Worker Node 2"
  }
}

resource "aws_instance" "worker_node_3" {
  ami = var.ami
  subnet_id = aws_subnet.cluster_subnet_a.id
  associate_public_ip_address = true
  instance_type = var.instance_type
  key_name = var.keys
  vpc_security_group_ids = [aws_security_group.cluster_sg.id]
  tags = {
    Name = "Worker Node 3"
  }
}
