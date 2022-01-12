# terraform-aws-iam-role

## Instantiation
The simplest instantiation requires only an environment, service, policy, and role_name.

```
module "iam_role" {
  source = "git@github.com:kiawnna/terraform-aws-iam-role.git"
  service = "example.amazonaws.com"
  policy = data.aws_iam_policy_document.name_of_policy.json # Can use a data resource to input the policy.
  role_name = "role name"
  environment = "dev"
}
```
> This example will create an iam role that accepts all the provided defaults. Review defaults below under Variables / Customizations.

## Resources Created
* An IAM role.

## Outputs
The IAM role name and the IAM role arn.

Reference them as:

> module.iam_role_module_name.role_arn
> module.iam_role_module_name.role_name


## Variables / Customization
The variable below can be customized to fit your needs. The current defaults are:
>  * `managed_policies_list` &rarr; null

See the `variables.tf` file for further information.

## Tags
There are no tags associated with this resource.
