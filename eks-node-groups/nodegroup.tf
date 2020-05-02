resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.cluster.name
  node_group_name = local.NODEGROUP_NAME
  node_role_arn   = aws_iam_role.node-group-role.arn
  subnet_ids      = local.PUBLIC_SUBNETS
  instance_types  = [var.INSTANCE_TYPE]

  remote_access  {
    ec2_ssh_key   = var.KEYPAIR_NAME
  }


  scaling_config {
    desired_size = var.INSTANCE_COUNT
    max_size     = var.INSTANCE_COUNT
    min_size     = var.INSTANCE_COUNT
  }

  depends_on = [
    aws_iam_role_policy_attachment.admin-access,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy
  ]
}