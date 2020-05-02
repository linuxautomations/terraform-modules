resource "null_resource" "network" {
  triggers {
    build = timestamp()
  }
  provisioner "local-exec" {
    command = "aws ec2 create-tags --resources ${local.TAGS_SUBNETS} --tags Key=kubernetes.io/cluster/${local.EKS_NAME},Value=shared --region ${data.aws_region.current.name}"
  }
}