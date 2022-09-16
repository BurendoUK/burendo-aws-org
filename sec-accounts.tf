resource "aws_organizations_account" "audit" {
  name      = "Audit"
  email     = "audit@burendo.com"
  tags      = merge(local.tags, { Name = "Audit" })
  parent_id = aws_organizations_organizational_unit.security.id
}

resource "aws_organizations_account" "log_archive" {
  name      = "Log Archive"
  email     = "log-archive@burendo.com"
  tags      = merge(local.tags, { Name = "Log Archive" })
  parent_id = aws_organizations_organizational_unit.security.id
}
