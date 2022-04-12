module "demottime01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.org.demotime02@example.com"
    AccountName               = "DemoTime02"
    ManagedOrganizationalUnit = "DemoTime"
    SSOUserEmail              = "aws.org.demotime02@example.com"
    SSOUserFirstName          = "DemoTime"
    SSOUserLastName           = "02"
  }

  account_tags = {
    ManagedBy  = "AFT"
    CostCenter = "DemoTime02"
  }

  change_management_parameters = {
    change_requested_by = "Sarah Jones"
    change_reason       = "Create another test account for demo purposes"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "demotime02"
}
