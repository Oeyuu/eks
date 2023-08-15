# data "tls_certificate" "ekscluster" {
#   url = aws_eks_cluster.ekscluster.identity[0].oidc[0].issuer
# }

# resource "aws_iam_openid_connect_provider" "ekscluster" {
#   client_id_list  = ["sts.amazonaws.com"]
#   thumbprint_list = [data.tls_certificate.ekscluster.certificates[0].sha1_fingerprint]
#   url             = aws_eks_cluster.ekscluster.identity[0].oidc[0].issuer
# }