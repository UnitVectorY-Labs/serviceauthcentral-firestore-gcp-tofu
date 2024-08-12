[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Work In Progress](https://img.shields.io/badge/Status-Work%20In%20Progress-yellow)](https://unitvectory-labs.github.io/uvy-labs-guide/bestpractices/status/#work-in-progress)

# serviceauthcentral-firestore-gcp-tofu

OpenTofu module for deploying ServiceAuthCentral Firestore Database

## Usage

```hcl
module "serviceauthcentral_firestore_gcp" {
    source = "git::https://github.com/UnitVectorY-Labs/serviceauthcentral-kms-gcp-tofu.git?ref=main"
    name = "serviceauthcentral"
    project_id = var.project_id
    regions = ["us-east1"]
    region_db_names = {
        "us-east1" = "sac-us-east1"
    }
}
```

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
