resource "aws_organizations_account" "connora_sandbox" {
  name      = "ConnorASandbox"
  email     = "connor.avery@burendo.com"
  tags      = merge(local.tags, { Name = "ConnorASandbox" })
  parent_id = aws_organizations_organizational_unit.sandboxes.id
}

resource "aws_organizations_account" "leec_sandbox" {
  name      = "LeeCSandbox"
  email     = "lee.clark78@burendo.com"
  tags      = merge(local.tags, { Name = "LeeCSandbox" })
  parent_id = aws_organizations_organizational_unit.sandboxes.id
}

resource "aws_organizations_account" "rowang_sandbox" {
  name      = "RowanGSandbox"
  email     = "rowan.gill@burendo.com"
  tags      = merge(local.tags, { Name = "RowanGSandbox" })
  parent_id = aws_organizations_organizational_unit.sandboxes.id
}

resource "aws_organizations_account" "zesh_sandbox" {
  name      = "ZeshSandbox"
  email     = "zeshan.zoheb@burendo.com"
  tags      = merge(local.tags, { Name = "ZeshSandbox" })
  parent_id = aws_organizations_organizational_unit.sandboxes.id
}
