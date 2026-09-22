variable "name" {
  description = "name of the service"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "role_arn" {
  description = "role arn"
  type        = string
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for ECS and ALB"
}

variable "security_groups" {
  type        = list(string)
  description = " (Optional) Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used."
}

variable "lb_security_groups" {
  type        = list(string)
  description = "Load Balancer Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used."
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs"
}

variable "container_image" {
  type        = string
  description = "Container image for ECS"
}

variable "container_port" {
  type    = number
  default = 80
}

variable "cpu" {
  type    = string
  default = "1024" # 0.25 vCPU
}

variable "memory" {
  type    = string
  default = "2048" # 0.5 GB RAM
}

variable "desired_count" {
  description = "Number of desired tasks to run in the ECS service"
  type        = number
  default     = 1
}

variable "assign_public_ip" {
  description = "Whether to assign a public IP address to the ECS task"
  type        = bool
  default     = false
}

variable "target_port" {
  description = "The port on the container to which the load balancer forwards traffic"
  type        = number
  default     = 80
}

variable "target_protocol" {
  description = "The protocol used by the target group (e.g., HTTP or HTTPS)"
  type        = string
  default     = "HTTP"
}

variable "listener_port" {
  description = "The port on which the load balancer is listening"
  type        = number
  default     = 443
}

variable "listener_protocol" {
  description = "The protocol used by the load balancer listener (e.g., HTTP or HTTPS)"
  type        = string
  default     = "HTTPS"
}

variable "ssl_policy" {
  description = "SSL policy for HTTPS listeners (e.g., ELBSecurityPolicy-2016-08)"
  type        = string
}

variable "certificate_arn" {
  description = "ARN of the ACM certificate for HTTPS listener"
  type        = string
}