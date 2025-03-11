# Terraform Registry - Google Cloud Remote Backend (tfr-gc-remote-backend)

This Terraform module creates a Google Cloud Storage bucket configured for securely storing Terraform state files. The bucket is properly configured with versioning enabled and public access prevention enforced.

The bucket will be created with a random identifier followed by `.tfbackend.novasoftworks.net`, ensuring global uniqueness.

## Usage

```hcl
module "terraform_backend" {
  source = "github.com/NovaSoftworks/tfr-gc-remote-backend?ref=v1.0.0"
  
  project_id = "your-project-id"
  location   = "EU"
}
```

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|----------|
| project_id | The Google Cloud Project ID where the bucket will be created. | `string` | Yes |
| location | The Google Cloud location where the bucket will be stored. | `string` | Yes |

## Outputs

| Name | Description |
|------|-------------|
| bucket_name | The name of the created GCS bucket |
