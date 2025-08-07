# These accounts exists to allow Burendo to build POC solutions for clients or potential clients 

# The following accounts allow the creation of an NHS data dashboard solution.
# When the engagement concludes delete these aws account. 
resource "aws_organizations_account" "nhs_data_dashboard_tooling" {
  name      = "nhs-data-dashboard-tooling"
  email     = local.nhs_data_dashboard_tooling_aws_email
  tags      = merge(local.tags, { Name = "NHSDataDashboardTooling" })
  parent_id = aws_organizations_organizational_unit.clients.id
}

resource "aws_organizations_account" "nhs_data_dashboard_application" {
  name      = "nhs-data-dashboard-application"
  email     = local.nhs_data_dashboard_application_aws_email
  tags      = merge(local.tags, { Name = "NHSDataDashboardApplication" })
  parent_id = aws_organizations_organizational_unit.clients.id
}

# The following accounts allow the creation of teh Safeshout solution.
# When Safeshout are ready to self manage this transfer ownership of these accounts. 
resource "aws_organizations_account" "safeshout_management" {
  name      = "safeshout-management"
  email     = local.safeshout_management_aws_email
  tags      = merge(local.tags, { Name = "Safeshout" })
  parent_id = aws_organizations_organizational_unit.safeshout.id
}

resource "aws_organizations_account" "safeshout_staging" {
  name      = "safeshout-staging"
  email     = local.safeshout_staging_aws_email
  tags      = merge(local.tags, { Name = "Safeshout" })
  parent_id = aws_organizations_organizational_unit.safeshout.id
}

resource "aws_organizations_account" "safeshout_development" {
  name      = "safeshout-development"
  email     = local.safeshout_development_aws_email
  tags      = merge(local.tags, { Name = "Safeshout" })
  parent_id = aws_organizations_organizational_unit.safeshout.id
}

resource "aws_organizations_account" "barnsleyfc_test" {
  name      = "barnsleyfc-test"
  email     = local.barnsleyfc_test_aws_email
  tags      = merge(local.tags, { Name = "BarnsleyFC" })
  parent_id = aws_organizations_organizational_unit.barnsleyfc.id
}

resource "aws_organizations_account" "barnsleyfc_prod" {
  name      = "barnsleyfc-prod"
  email     = local.barnsleyfc_prod_aws_email
  tags      = merge(local.tags, { Name = "BarnsleyFC" })
  parent_id = aws_organizations_organizational_unit.barnsleyfc.id
}
