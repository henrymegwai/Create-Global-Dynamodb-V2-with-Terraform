variable "env" {
  type        = string
  description = "The environment name (dev, test, ...)"
}

variable "table_name_users" {
  type        = string
  description = "Table name of users"
}

variable "enabled" {
  type        = bool
  description = "Whether to deploy DynamoDB table to the region"
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Tags of the maintenance team"
}
variable "regions" {
  type        = list(string)
  description = "What region to deploy (eu-central-1, us-east-1, etc)"
}
variable "service_name" {
  type        = string
  description = "Name of the service such as (registration-service)"
}
