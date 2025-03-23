variable "project_id" {
  type        = string
  description = "The Google Cloud Project ID where the bucket will be created."
}

variable "location" {
  type        = string
  description = "The Google Cloud location where the bucket will be stored."
}

variable "subdomain" {
  type        = string
  description = "The name of the bucket subdomain (e.g. my-app-backend)."
}
