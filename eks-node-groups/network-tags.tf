resource "null_resource" "network" {
  provisioner "local-exec" {
    command = "aws ec2 create-tags --resources ${local.TAGS_SUBNETS} --tags Key=kubernetes.io/cluster/${local.EKS_NAME},Value=shared"
  }
}