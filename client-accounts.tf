# This account exists as a means to allow a trust relationship with the clients AWS accounts but allows Burendo to manage
# the users of this account hence managing who can access the clients accounts via an assumed role. 
# When the engagement concludes delete this aws account. 

resource "aws_organizations_account" "fgfs" {
  name      = "FGFS"
  email     = local.client_aws_email
  tags      = merge(local.tags, { Name = "FrasersGroupFinancialServices" })
  parent_id = aws_organizations_organizational_unit.clients.id
}
