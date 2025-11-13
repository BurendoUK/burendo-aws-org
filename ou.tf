# /Infrastructure
resource "aws_organizations_organizational_unit" "infrastructure" {
  name      = "Infrastructure"
  parent_id = aws_organizations_organization.burendo.roots[0].id
}

# /Sandboxes
resource "aws_organizations_organizational_unit" "sandboxes" {
  name      = "Sandboxes"
  parent_id = aws_organizations_organization.burendo.roots[0].id
}

# /Security
resource "aws_organizations_organizational_unit" "security" {
  name      = "Security"
  parent_id = aws_organizations_organization.burendo.roots[0].id
}

# /Clients
resource "aws_organizations_organizational_unit" "clients" {
  name      = "Clients"
  parent_id = aws_organizations_organization.burendo.roots[0].id
}

# /Clients/Safeshout
resource "aws_organizations_organizational_unit" "safeshout" {
  name      = "Safeshout"
  parent_id = aws_organizations_organizational_unit.clients.id
}

# /Clients/BarnsleyFC
resource "aws_organizations_organizational_unit" "barnsleyfc" {
  name      = "BarnsleyFC"
  parent_id = aws_organizations_organizational_unit.clients.id
}

# /Burendo Labs
resource "aws_organizations_organizational_unit" "burendo_labs" {
  name      = "Burendo Labs"
  parent_id = aws_organizations_organization.burendo.roots[0].id
}
