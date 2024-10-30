# This account exists as a means to allow a trust relationship with the clients AWS accounts but allows Burendo to manage
# the users of this account hence managing who can access the clients accounts via an assumed role. 
# When the engagement concludes delete this aws account. 

resource "aws_organizations_account" "frasers_group_financial_services" {
  name      = "FrasersGroupFinancialServices"
  email     = "joshua.douce+fgfs@burendo.com"
  tags      = { Name = "FrasersGroupFinancialServices" }
  parent_id = aws_organizations_organizational_unit.clients.id
}