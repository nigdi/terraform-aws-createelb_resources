variable "port" {
  description = "Port for Target Group"
  default = "30000"
}
variable "name" {
  description = "Name of the ELB"
  type        = string
  default     = "govind"
}
variable "vpc_id" {
  description = "VPC ID"
  type        = string
}
variable "tags" {
  description = "Tags for the ELB"
  type        = map(string)
  default     = {
    Name        = "thinknyx-elb" 
  }
}
variable "target_id" {
  description = "List of target IDs"
}

variable "load_balancer_arn" {
  description = "Load Balancer ARN"
  type        = string
}
