resource "aws_organizations_account" "burendo_dev" {
  name      = "burendo-dev"
  email     = lookup(local.email, "burendo-dev")
  tags      = merge(local.tags, { Name = "burendo-dev" })
  parent_id = aws_organizations_organizational_unit.infrastructure.id
}

resource "aws_organizations_account" "burendo_management_dev" {
  name      = "burendo-management-dev"
  email     = lookup(local.email, "burendo-mgmt-dev")
  tags      = merge(local.tags, { Name = "burendo-management-dev" })
  parent_id = aws_organizations_organizational_unit.infrastructure.id
}

resource "aws_organizations_account" "burendo_production" {
  name      = "burendo-production"
  email     = lookup(local.email, "burendo-prod")
  tags      = merge(local.tags, { Name = "burendo-production" })
  parent_id = aws_organizations_organizational_unit.infrastructure.id
}

resource "aws_organizations_account" "burendo" {
  name  = "Burendo"
  email = lookup(local.email, "burendo-mgmt")
  tags  = merge(local.tags, { Name = "Burendo" })
}
