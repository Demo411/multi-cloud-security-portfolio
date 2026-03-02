variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "incident-response-lab"
}

variable "workspace_name" {
  description = "Log Analytics workspace name"
  type        = string
  default     = "sentinel-lab1"
}
