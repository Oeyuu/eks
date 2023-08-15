locals {
  acc_id       = "143805577160"
  company_name = "teclify"
  app          = "msk"
  prefix       = "${local.company_name}-sandbox-${local.acc_id}"
  full_prefix  = "${local.prefix}-${local.app}"

}

# locals {
#   kubeconfig_content = data.aws_eks_cluster_auth.ekscluster.kubeconfig
# }

# locals {
#   kubeconfig = <<KUBECONFIG

# apiVersion: v1
# clusters:
# - cluster:
#     server: ${aws_eks_cluster.ekscluster.endpoint}
#     certificate-authority-data: ${aws_eks_cluster.ekscluster.certificate_authority.0.data}
#   name: kubernetes
# contexts:
# - context:
#     cluster: kubernetes
#     user: aws
#   name: aws
# current-context: aws
# kind: Config
# preferences: {}
# users:
# - name: aws
#   user:
#     exec:
#       apiVersion: client.authentication.k8s.io/v1beta1
#       command: aws-iam-authenticator
#       args:
#         - "token"
#         - "-i"
#         - "${aws_eks_cluster.ekscluster.name}"
# KUBECONFIG
# }

# output "kubeconfig" {
#   value = local.kubeconfig
# }
