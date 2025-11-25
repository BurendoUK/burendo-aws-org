locals {
  organization_policy_full_access_id = "p-FullAWSAccess"
}

resource "aws_organizations_policy_attachment" "infrastructure" {
  policy_id = local.organization_policy_full_access_id
  target_id = aws_organizations_organizational_unit.infrastructure.id
}

resource "aws_organizations_policy_attachment" "security" {
  policy_id = local.organization_policy_full_access_id
  target_id = aws_organizations_organizational_unit.security.id
}

resource "aws_organizations_policy_attachment" "management" {
  policy_id = local.organization_policy_full_access_id
  target_id = aws_organizations_account.burendo.id
}

resource "aws_organizations_policy_attachment" "sandboxes" {
  policy_id = local.organization_policy_full_access_id
  target_id = aws_organizations_organizational_unit.sandboxes.id
}

resource "aws_organizations_policy_attachment" "clients" {
  policy_id = local.organization_policy_full_access_id
  target_id = aws_organizations_organizational_unit.clients.id
}

resource "aws_organizations_policy_attachment" "safeshout" {
  policy_id = local.organization_policy_full_access_id
  target_id = aws_organizations_organizational_unit.safeshout.id
}
