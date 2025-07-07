variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
  default     = "kbot-demo"
}

variable "GOOGLE_PROJECT" {
  type        = string
  description = "GCP project name"
}

variable "GOOGLE_REGION" {
  type        = string
  default     = "us-central1-c"
  description = "GCP region to use"
}

variable "GKE_MACHINE_TYPE" {
  type        = string
  default     = "e2-medium"
  description = "Machine type"
}

variable "GKE_NUM_NODES" {
  type        = number
  default     = 2
  description = "GKE nodes number"
}

variable "github_org" {
  description = "GitHub organization name"
  type        = string
  default     = "tooggi"
}

variable "github_repository" {
  description = "GitHub repository name"
  type        = string
  default     = "demo-flux"
}

variable "github_username" {
  description = "GitHub username for authentication"
  type        = string
  default     = "flux-user"
}

variable "github_token" {
  description = "GitHub token for authentication"
  type        = string
}

variable "target_path" {
  description = "Flux manifests subdirectory"
  type        = string
  default     = "clusters/gcp"
}
