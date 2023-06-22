variable "project" {
  description = "The ID of the project where resources will be created"
  default     = "cloud-run-pray-ground"
}

variable "repository_id" {
  description = "The ID of the artifact repository"
  default     = "go-echo-sandbox"
}

variable "region" {
  description = "The region where resources will be created"
  default     = "asia-northeast2"
}
