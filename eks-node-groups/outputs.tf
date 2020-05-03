output "AUTO_SCALING_GROUP_NAME" {
  value = tolist(aws_eks_node_group.node-group.resources)
}