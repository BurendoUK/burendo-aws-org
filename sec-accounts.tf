resource "aws_organizations_account" "audit" {
  name      = "Audit"
  email     = lookup(local.email, "audit")
  tags      = merge(local.tags, { Name = "Audit" })
  parent_id = aws_organizations_organizational_unit.security.id
}

resource "aws_organizations_account" "log_archive" {
  name      = "Log Archive"
  email     = lookup(local.email, "log-archive")
  tags      = merge(local.tags, { Name = "Log Archive" })
  parent_id = aws_organizations_organizational_unit.security.id
}
