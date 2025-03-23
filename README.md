# Terraform Registry - Google Cloud Remote Backend (tfr-gc-remote-backend)

This Terraform module creates a Google Cloud Storage bucket configured for securely storing Terraform state files. The bucket is properly configured with versioning enabled and public access prevention enforced.

The bucket will be created with a chosen subdomain followed by `.tfbackend.novasoftworks.net`. Ensuring global uniqueness must be managed on user side.

## Usage

```hcl
module "terraform_backend" {
  source = "github.com/NovaSoftworks/tfr-gc-remote-backend?ref=v1.0.2"
  
  project_id = "your-project-id"
  location   = "EU"
  subdomain  = "your-unique-subdomain"
}
```

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|----------|
| project_id | The Google Cloud Project ID where the bucket will be created. | `string` | Yes |
| location | The Google Cloud location where the bucket will be stored. | `string` | Yes |
| subdomain | The name of the bucket subdomain. Must be globally unique. | `string` | Yes |

## Outputs

| Name | Description |
|------|-------------|
| bucket_name | The name of the created GCS bucket |
