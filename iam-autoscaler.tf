# data "aws_iam_policy_document" "eks_cluster_autoscaler_assume_role_policy" {
#     statement {
#         actions = ["sts:AssumeRoleWithWebIdentity"]
#         effect = "Allow"

#         condition {
#             test = "StringEquals"
#             variable = 
#         }
#     }
# }