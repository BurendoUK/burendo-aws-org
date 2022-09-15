resource "aws_organizations_organization" "burendo" {

  # List of AWS service principal names for which 
  # you want to enable integration with your organization

  aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "controltower.amazonaws.com",
    "sso.amazonaws.com"
  ]

  enabled_policy_types = [
    "SERVICE_CONTROL_POLICY",
  ]

  feature_set = "ALL"
}
