variable "dt_env_url" {
  description = "Dynatrace environment URL"
  type        = string
}

variable "dt_api_token" {
  description = "Dynatrace API token"
  type        = string
  sensitive   = true
}

variable "mz_names" {
  description = "Map of Management Zone names keyed by the logical key."
  type        = map(string)
}

variable "oauth_client_id" {
  description = "Dynatrace oauth client id"
  type        = string
  sensitive   = true
}

variable "oauth_client_secret" {
  description = "Dynatrace oauth client secret"
  type        = string
  sensitive   = true
}
