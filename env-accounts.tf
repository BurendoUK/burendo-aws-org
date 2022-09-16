resource "aws_organizations_account" "burendo_dev" {
  name      = "burendo-dev"
  email     = "dev.engineering@burendo.com"
  tags      = merge(local.tags, { Name = "burendo-dev" })
  parent_id = aws_organizations_organizational_unit.infrastructure.id
}

resource "aws_organizations_account" "burendo_management_dev" {
  name      = "burendo-management-dev"
  email     = "mgmt.dev.engineering@burendo.com"
  tags      = merge(local.tags, { Name = "burendo-management-dev" })
  parent_id = aws_organizations_organizational_unit.infrastructure.id
}

resource "aws_organizations_account" "burendo_production" {
  name      = "burendo-production"
  email     = "production@burendo.com"
  tags      = merge(local.tags, { Name = "burendo-production" })
  parent_id = aws_organizations_organizational_unit.infrastructure.id
}
