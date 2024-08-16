
variable "project_id" {
  description = "The GCP project id"
  type        = string
}

variable "database_name" {
  description = "The name of the database"
  type        = string
  default     = "default"

  validation {
    condition     = can(regex("^[a-z](?:[-a-z0-9]{1,29}[a-z0-9])$", var.database_name))
    error_message = "The name must start with a lowercase letter and can contain lowercase letters, numbers, and hyphens. It must be between 2 and 30 characters long."
  }
}

variable "use_existing_database" {
  description = "Whether to use an existing Firestore database"
  type        = bool
  default     = false
}

variable "region" {
  description = "Region where the Firestore database will be created"
  type        = string
}

variable "firestore_deletion_policy" {
  description = "The deletion policy for Firestore databases"
  type        = string
  default     = "ABANDON"

  validation {
    condition     = contains(["ABANDON", "DELETE"], var.firestore_deletion_policy)
    error_message = "The firestore_deletion_policy variable must be one of: ABANDON, DELETE."
  }
}
