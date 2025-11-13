resource "aws_organizations_account" "burendo_labs_development" {
  name      = "burendo-labs-development"
  email     = local.burendo_labs_development_aws_email
  tags      = merge(local.tags, { Name = "burendo-labs-development" })
  parent_id = aws_organizations_organizational_unit.burendo_labs.id
}

resource "aws_organizations_account" "burendo_labs_test" {
  name      = "burendo-labs-test"
  email     = local.burendo_labs_test_aws_email
  tags      = merge(local.tags, { Name = "burendo-labs-test" })
  parent_id = aws_organizations_organizational_unit.burendo_labs.id
}

resource "aws_organizations_account" "burendo_labs_production" {
  name      = "burendo-labs-production"
  email     = local.burendo_labs_production_aws_email
  tags      = merge(local.tags, { Name = "burendo-labs-production" })
  parent_id = aws_organizations_organizational_unit.burendo_labs.id
}