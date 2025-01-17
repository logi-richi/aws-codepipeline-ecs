variable "name" {
  type        = string
  description = "The name associated with the pipeline and assoicated resources. ie: app-name"
}

variable "ecr_name" {
  type        = string
  description = "The name of the ECR repo"
}

variable "ecs_cluster_name" {
  type        = string
  description = "The name of the ECS cluster"
}

variable "ecs_service_name" {
  type        = string
  description = "The name of the ECS service"
}

variable "ecs_artifact_filename" {
  type        = string
  description = "The name of the ECS deploy artifact"
  default     = null
}

variable "github_repo_owner" {
  type        = string
  description = "The owner of the GitHub repo"
}

variable "github_repo_name" {
  type        = string
  description = "The name of the GitHub repository"
}

variable "github_branch_name" {
  type        = string
  description = "The git branch name to use for the codebuild project"
  default     = "master"
}

variable "github_oauth_token" {
  type        = string
  description = "GitHub oauth token"
}

variable "codebuild_image" {
  type        = string
  description = "The codebuild image to use"
  default     = null
}

variable "build_compute_type" {
  type        = string
  description = "(Optional) build environment compute type"
  default     = null
}

variable "task_execution_role" {
  type        = string
  description = "The name of the task execution role"
  default     = "ecsTaskExecutionRole"
}

variable "use_docker_credentials" {
  type        = bool
  description = "(Optional) Use dockerhub credentals stored in parameter store"
  default     = false
}

variable "tags" {
  type        = map
  description = "A mapping of tags to assign to the resource"
  default     = {}
}
