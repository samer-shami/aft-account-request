module "demottime03" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.org.demotime03@example.com"
    AccountName               = "DemoTime03"
    ManagedOrganizationalUnit = "DemoTime"
    SSOUserEmail              = "aws.org.demotime03@example.com"
    SSOUserFirstName          = "DemoTime"
    SSOUserLastName           = "03"
  }

  account_tags = {
    ManagedBy  = "AFT"
    CostCenter = "DemoTime03"
  }

  change_management_parameters = {
    change_requested_by = "Sammy"
    change_reason       = "Hello World"
  }

  custom_fields = {
    group    = "prod"
    vpc_type = "standalone"
  }

  account_customizations_name = "demotime03"
}
