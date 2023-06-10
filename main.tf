module "control_tower_account_factory_terraform" {
  source  = "aws-ia/control_tower_account_factory/aws"
  version = "1.10.3"
  # Required Vars
  ct_management_account_id    = var.ct_management_account_id
  log_archive_account_id      = var.log_archive_account_id
  audit_account_id            = var.audit_account_id
  aft_management_account_id   = var.aft_management_account_id
  ct_home_region              = "us-east-1"
  tf_backend_secondary_region = "us-east-2"
  # VCS Vars
  vcs_provider = "github"
  #   account_request_repo_name                     = "ExampleOrg/example-repo-1"
  #   global_customizations_repo_name               = "ExampleOrg/example-repo-2"
  #   account_customizations_repo_name              = "ExampleOrg/example-repo-3"
  #   account_provisioning_customizations_repo_name = "ExampleOrg/example-repo-4"
  # TF Vars
  terraform_distribution = "tfc"
  terraform_token        = var.terraform_token
  terraform_org_name     = var.terraform_org_name
}

variable "ct_management_account_id" {
  type      = string
  sensitive = true
  default   = ""
}
variable "log_archive_account_id" {
  type      = string
  sensitive = true
  default   = ""
}

variable "audit_account_id" {
  type      = string
  sensitive = true
  default   = ""
}
variable "aft_management_account_id" {
  type      = string
  sensitive = true
  default   = ""
}

variable "terraform_token" {
  type      = string
  sensitive = true
  default   = ""
}
variable "terraform_org_name" {
  type      = string
  sensitive = true
  default   = ""
}