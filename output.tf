output "control_node_ip" {
  value = aws_instance.control_node.public_ip
}

output "worker_node_1_ip" {
  value = aws_instance.worker_node_1.public_ip
}

output "worker_node_2_ip" {
  value = aws_instance.worker_node_2.public_ip
}

output "worker_node_3_ip" {
  value = aws_instance.worker_node_3.public_ip
}
