# Global
variable "name" {
  type        = string
  description = "The name of the deployment."
  default     = "metallb"
}

variable "namespace" {
  type    = string
  default = "metallb"
}

variable "compartment" {
  type        = string
  description = "The compartment the ressource is deployed with."
}

# Helm
variable "helm_chart_version" {
  type    = string
  default = "v0.13.9"
}
