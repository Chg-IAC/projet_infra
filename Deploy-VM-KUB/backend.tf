terraform {
  backend "azurerm" {
    storage_account_name = "tfstatelivestreaming"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "vXgia+H49U5tZtJhxOQMjhmUiwbqQf5CYwVXT1Uquq1QxELJHSeV/JmfigyMZgu2Jc6QSqMUzx/hRXeDRFvCew=="
  }
}
