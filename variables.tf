variable "ec2_managed_prefix_lists" {
  description = <<EOT
Map of ec2_managed_prefix_lists, attributes below
Required:
    - address_family
    - max_entries
    - name
Optional:
    - region
    - tags
    - tags_all
    - entry (block):
        - cidr (required)
        - description (optional)
EOT

  type = map(object({
    address_family = string
    max_entries    = number
    name           = string
    region         = optional(string)
    tags           = optional(map(string))
    tags_all       = optional(map(string))
    entry = optional(list(object({
      cidr        = string
      description = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ec2_managed_prefix_lists : (
        v.max_entries >= 1
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

