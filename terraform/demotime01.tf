module "demottime01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.org.demotime01@example.com"
    AccountName               = "DemoTime01"
    ManagedOrganizationalUnit = "DemoTime"
    SSOUserEmail              = "aws.org.demotime01@example.com"
    SSOUserFirstName          = "DemoTime"
    SSOUserLastName           = "01"
  }

  account_tags = {
    ManagedBy  = "AFT"
    CostCenter = "DemoTime01"
  }

  change_management_parameters = {
    change_requested_by = "John Smith"
    change_reason       = "Create a test account for demo purposes."
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "demotime01"
}
