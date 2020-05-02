resource "aws_eks_cluster" "cluster" {
  name          = local.EKS_NAME
  role_arn      = aws_iam_role.eks-role.name

  vpc_config {
    subnet_ids  = local.PUBLIC_SUBNETS
  }

  depends_on = [
    "aws_iam_role_policy_attachment.example-AmazonEKSClusterPolicy",
    "aws_iam_role_policy_attachment.example-AmazonEKSServicePolicy",
  ]
}