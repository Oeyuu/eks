data "aws_msk_cluster" "msk_cluster" {
  cluster_name = var.msk_cluster_name
}

data "aws_iam_role" "super_user" {
  name = var.iam_role_name
}

data "aws_security_groups" "msk_sg" {
  tags = {
    ClusterName = var.msk_cluster_name
  }
}

data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = data.aws_security_groups.msk_sg.vpc_ids
  }
  tags = {
    tier = "private"
  }
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = data.aws_security_groups.msk_sg.vpc_ids
  }
  tags = {
    tier = "public"
  }
}


data "aws_region" "current" {
  name = var.region
}

data "aws_eks_cluster_auth" "ekscluster" {
  name = aws_eks_cluster.ekscluster.name
}