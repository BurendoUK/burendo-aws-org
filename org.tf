resource "aws_organizations_organization" "burendo" {

  # List of AWS service principal names for which 
  # you want to enable integration with your organization

  aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "sso.amazonaws.com"
  ]

  feature_set = "ALL"
}
