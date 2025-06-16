# These accounts exists to allow Burendo to build POC solutions for clients or potential clients 

# The following accounts allow the creation of an NHS data dashboard solution.
# When the engagement concludes delete these aws account. 
resource "aws_organizations_account" "nhs_data_dashboard_tooling" {
  name      = "nhs-data-dashboard-tooling"
  email     = local.poc_aws_email
  tags      = merge(local.tags, { Name = "NHSDataDashboardTooling" })
  parent_id = aws_organizations_organizational_unit.clients.id
}

resource "aws_organizations_account" "nhs_data_dashboard_application" {
  name      = "nhs-data-dashboard-application"
  email     = local.poc_aws_email
  tags      = merge(local.tags, { Name = "NHSDataDashboardApplication" })
  parent_id = aws_organizations_organizational_unit.clients.id
}
