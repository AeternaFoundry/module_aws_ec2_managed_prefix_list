output "ec2_managed_prefix_lists_id" {
  description = "Map of id values across all ec2_managed_prefix_lists, keyed the same as var.ec2_managed_prefix_lists"
  value       = { for k, v in aws_ec2_managed_prefix_list.ec2_managed_prefix_lists : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_managed_prefix_lists_address_family" {
  description = "Map of address_family values across all ec2_managed_prefix_lists, keyed the same as var.ec2_managed_prefix_lists"
  value       = { for k, v in aws_ec2_managed_prefix_list.ec2_managed_prefix_lists : k => v.address_family if v.address_family != null && length(v.address_family) > 0 }
}
output "ec2_managed_prefix_lists_arn" {
  description = "Map of arn values across all ec2_managed_prefix_lists, keyed the same as var.ec2_managed_prefix_lists"
  value       = { for k, v in aws_ec2_managed_prefix_list.ec2_managed_prefix_lists : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ec2_managed_prefix_lists_entry" {
  description = "Map of entry values across all ec2_managed_prefix_lists, keyed the same as var.ec2_managed_prefix_lists"
  value       = { for k, v in aws_ec2_managed_prefix_list.ec2_managed_prefix_lists : k => v.entry if v.entry != null && length(v.entry) > 0 }
}
output "ec2_managed_prefix_lists_max_entries" {
  description = "Map of max_entries values across all ec2_managed_prefix_lists, keyed the same as var.ec2_managed_prefix_lists"
  value       = { for k, v in aws_ec2_managed_prefix_list.ec2_managed_prefix_lists : k => v.max_entries if v.max_entries != null }
}
output "ec2_managed_prefix_lists_name" {
  description = "Map of name values across all ec2_managed_prefix_lists, keyed the same as var.ec2_managed_prefix_lists"
  value       = { for k, v in aws_ec2_managed_prefix_list.ec2_managed_prefix_lists : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ec2_managed_prefix_lists_owner_id" {
  description = "Map of owner_id values across all ec2_managed_prefix_lists, keyed the same as var.ec2_managed_prefix_lists"
  value       = { for k, v in aws_ec2_managed_prefix_list.ec2_managed_prefix_lists : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "ec2_managed_prefix_lists_region" {
  description = "Map of region values across all ec2_managed_prefix_lists, keyed the same as var.ec2_managed_prefix_lists"
  value       = { for k, v in aws_ec2_managed_prefix_list.ec2_managed_prefix_lists : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_managed_prefix_lists_tags" {
  description = "Map of tags values across all ec2_managed_prefix_lists, keyed the same as var.ec2_managed_prefix_lists"
  value       = { for k, v in aws_ec2_managed_prefix_list.ec2_managed_prefix_lists : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ec2_managed_prefix_lists_tags_all" {
  description = "Map of tags_all values across all ec2_managed_prefix_lists, keyed the same as var.ec2_managed_prefix_lists"
  value       = { for k, v in aws_ec2_managed_prefix_list.ec2_managed_prefix_lists : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ec2_managed_prefix_lists_version" {
  description = "Map of version values across all ec2_managed_prefix_lists, keyed the same as var.ec2_managed_prefix_lists"
  value       = { for k, v in aws_ec2_managed_prefix_list.ec2_managed_prefix_lists : k => v.version if v.version != null }
}

