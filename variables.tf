variable "region" {
  description = "Main region for all resources"
  type        = string
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the main VPC"
}

variable "availibilty_zone_1" {
  type        = string
  description = "First availibility zone"
}

variable "availibilty_zone_2" {
  type        = string
  description = "Second availibility zone"
}

variable "default_tags" {
  type = map(any)
  default = {
    Application = "Demo App"
    Environment = "Dev"
  }
}

variable "desired_ecs_tasks" {
  type        = number
  description = "The number of ecs tasks that you want to run"
}

variable "minimum_ecs_tasks" {
  type        = number
  description = "The minimum number of ecs tasks within the autoscaling group"
}

variable "maximum_ecs_tasks" {
  type        = number
  description = "The maximum number of ecs tasks within the autoscaling group"
}

variable "container_port" {
  description = "Port that needs to be exposed for the application"
}

variable "shared_config_files" {
  description = "Path of your shared config file in .aws folder"
}

variable "shared_credentials_files" {
  description = "Path of your shared credentials file in .aws folder"
}

variable "credential_profile" {
  description = "Profile name in your credentials file"
  type        = string
}
  