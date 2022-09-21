# Burendo AWS Organisation Repo

This repo holds the IaC to manage our AWS Organisation and accounts.

## Usage

### First run
`pip3 install -r requirements.txt`

### Bootstrap

Replace any mentions of `example` with the name of your new repository, e.g. `burendo-my-service`

Create your AWS session with the cli, and assume the `Administrator` role. For this I personally use [awsume](https://awsu.me/).

then:

`make bootstrap`
`terraform init`

## Sandbox accounts

Sandbox accounts are accounts for engineers to be able to sandbox demos and practice newly learned technologies.

Rules regarding the sandbox accounts can be found in the handbook Engineering > Tooling > AWS > Sandbox Environments > [Sandbox Rules](https://github.com/BurendoUK/burendo-handbook/blob/main/docs/Engineering/Tooling/AWS/Sandbox%20Environments/sandboxrules.md)

Engineers are entitled to create a sandbox account for themselves by modifying `sandbox-accounts.tf` appropriately and raising an PR.

### Setup

After your PR has been approved, merged and successfully been deployed via Terraform. Login to the main account, assume role and review the `Organisation` page for the `Infrastructure` organisational unit to find your sandbox account number.

Logout of AWS and attempt to login using root account email address - this is your burendo email address that you created your sandbox with. Complete the reset your password journey and tada! You have your sandbox.
