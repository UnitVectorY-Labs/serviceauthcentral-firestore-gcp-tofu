
locals {
  firestore_database_name = var.use_existing_database ? var.database_name : google_firestore_database.database[0].name
}

resource "google_firestore_database" "database" {
  count           = var.use_existing_database ? 0 : 1
  project         = var.project_id
  location_id     = var.region
  name            = var.database_name
  type            = "FIRESTORE_NATIVE"
  deletion_policy = var.firestore_deletion_policy
}

resource "google_firestore_index" "authorizations_as" {
  project    = var.project_id
  database   = local.firestore_database_name
  collection = "authorizations"
  fields {
    field_path = "audience"
    order      = "ASCENDING"
  }
  fields {
    field_path = "subject"
    order      = "ASCENDING"
  }
}

resource "google_firestore_index" "authorizations_sa" {
  project    = var.project_id
  database   = local.firestore_database_name
  collection = "authorizations"

  fields {
    field_path = "subject"
    order      = "ASCENDING"
  }
  fields {
    field_path = "audience"
    order      = "ASCENDING"
  }
}

resource "google_firestore_field" "keys_ttl" {
  project    = var.project_id
  database   = local.firestore_database_name
  collection = "keys"
  field = "ttl"
  ttl_config {}
}

resource "google_firestore_field" "loginCodes_ttl" {
  project    = var.project_id
  database   = local.firestore_database_name
  collection = "loginCodes"
  field = "ttl"
  ttl_config {}
}

resource "google_firestore_field" "loginStates_ttl" {
  project    = var.project_id
  database   = local.firestore_database_name
  collection = "loginStates"
  field = "ttl"
  ttl_config {}
}