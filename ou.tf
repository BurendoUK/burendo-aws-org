resource "aws_organizations_organizational_unit" "infrastructure" {
  name      = "Infrastructure"
  parent_id = aws_organizations_organization.burendo.roots[0].id
}

resource "aws_organizations_organizational_unit" "sandboxes" {
  name      = "Sandboxes"
  parent_id = aws_organizations_organization.burendo.roots[0].id
}

resource "aws_organizations_organizational_unit" "security" {
  name      = "Security"
  parent_id = aws_organizations_organization.burendo.roots[0].id
}

resource "aws_organizations_organizational_unit" "clients" {
  name      = "Clients"
  parent_id = aws_organizations_organization.burendo.roots[0].id
}

resource "aws_organizations_organizational_unit" "safeshout" {
  name      = "Safeshout"
  parent_id = aws_organizations_organizational_unit.clients.id
}
