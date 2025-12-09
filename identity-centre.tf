module "iam-identity-center" {
  source  = "aws-ia/iam-identity-center/aws"
  version = "1.0.4"

  sso_groups = {
    Admin_BreakGlass : {
      group_name        = "Admin (Break Glass)"
      group_description = "Admin IAM Identity Center Group"
    }
  }

  existing_sso_groups = {
    SG_AWS_Admins : {
      group_name = "SG-AWS-Admins"
    }
    SG_AWS_Billing : {
      group_name = "SG-AWS-Billing"
    }
  }

  existing_sso_users = {
    engineering_burendo_com : {
      group_membership = ["Admin_BreakGlass"]
      user_name        = "engineering@burendo.com"
    }
  }

  permission_sets = {
    AdministratorAccess = {
      description          = "Provides AWS full access permissions."
      session_duration     = "PT4H",
      aws_managed_policies = ["arn:aws:iam::aws:policy/AdministratorAccess"]
    },
    Billing = {
      description          = "Provides AWS billing job function access permissions."
      session_duration     = "PT4H",
      aws_managed_policies = ["arn:aws:iam::aws:policy/job-function/Billing"]
    },
    ReadOnlyAccess = {
      description          = "Provides AWS read only access permissions."
      session_duration     = "PT4H",
      aws_managed_policies = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    }
  }

  account_assignments = {
    Admin_BreakGlass : {
      principal_name  = "Admin_BreakGlass"
      principal_type  = "GROUP"
      principal_idp   = "INTERNAL"
      permission_sets = ["AdministratorAccess"]
      account_ids = [
        aws_organizations_account.burendo.id
      ]
    }

    SG_AWS_Admins : {
      principal_name  = "SG_AWS_Admins"
      principal_type  = "GROUP"
      principal_idp   = "EXTERNAL"
      permission_sets = ["AdministratorAccess", "ReadOnlyAccess"]
      account_ids     = aws_organizations_organization.burendo.accounts[*].id
    }

    SG_AWS_Billing : {
      principal_name  = "SG_AWS_Billing"
      principal_type  = "GROUP"
      principal_idp   = "EXTERNAL"
      permission_sets = ["Billing"]
      account_ids     = aws_organizations_organization.burendo.accounts[*].id
    }
  }
}
