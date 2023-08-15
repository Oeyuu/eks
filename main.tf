resource "aws_eks_cluster" "ekscluster" {
  name     = "ekscluster"
  role_arn = data.aws_iam_role.super_user.arn

  vpc_config {
    subnet_ids = data.aws_subnets.public.ids
    security_group_ids = data.aws_security_groups.msk_sg.ids
  }


  depends_on = [
    data.aws_iam_role.super_user
  ]
}
