resource "aws_organizations_account" "customer_wars" {
  name      = "Customer WARs"
  email     = "war-engineering@burendo.com"
  tags      = merge(local.tags, { Name = "Customer WARs" })
  parent_id = aws_organizations_organizational_unit.customer_wars.id
}
