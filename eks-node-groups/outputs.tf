output "AUTO_SCALING_GROUP_NAME" {
  value = aws_eks_node_group.node-group.resources.name
}