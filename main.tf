// IAM Role/Policy for CodeBuild
resource "aws_iam_role" "role" {
  name = var.role_name
  assume_role_policy = data.aws_iam_policy_document.assume-role-policy.json
  managed_policy_arns = var.managed_policies_list
}

resource "aws_iam_role_policy" "policy" {
  role = aws_iam_role.role.name
  policy = var.policy
}

data "aws_iam_policy_document" "assume-role-policy" {
  statement {
    actions = [
      "sts:AssumeRole"]

    principals {
      type = "Service"
      identifiers = [
        var.service]
    }
  }
}
