[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Work In Progress](https://img.shields.io/badge/Status-Work%20In%20Progress-yellow)](https://unitvectory-labs.github.io/uvy-labs-guide/bestpractices/status/#work-in-progress)

# serviceauthcentral-firestore-gcp-tofu

OpenTofu module for deploying ServiceAuthCentral Firestore Database

## Usage

```hcl
module "serviceauthcentral_firestore_gcp" {
    source = "git::https://github.com/UnitVectorY-Labs/serviceauthcentral-firestore-gcp-tofu.git?ref=main"
    database_name = "serviceauthcentral"
    project_id = var.project_id
    region = "us-east4"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_firestore_database.database](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/firestore_database) | resource |
| [google_firestore_field.keys_ttl](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/firestore_field) | resource |
| [google_firestore_field.loginCodes_ttl](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/firestore_field) | resource |
| [google_firestore_field.loginStates_ttl](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/firestore_field) | resource |
| [google_firestore_index.authorizations_as](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/firestore_index) | resource |
| [google_firestore_index.authorizations_sa](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/firestore_index) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | The name of the database | `string` | `"default"` | no |
| <a name="input_firestore_deletion_policy"></a> [firestore\_deletion\_policy](#input\_firestore\_deletion\_policy) | The deletion policy for Firestore databases | `string` | `"ABANDON"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The GCP project id | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region where the Firestore database will be created | `string` | n/a | yes |
| <a name="input_use_existing_database"></a> [use\_existing\_database](#input\_use\_existing\_database) | Whether to use an existing Firestore database | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
