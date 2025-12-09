locals {
  account_ids = {
    all = aws_organizations_organization.burendo.accounts[*].id

    burendo_labs = {
      non_prod = [
        aws_organizations_account.burendo_labs_development.id,
        aws_organizations_account.burendo_labs_test.id
      ]
      prod = [
        aws_organizations_account.burendo_labs_production.id
      ]
    }
  }
}
