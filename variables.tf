variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "NobitaEC2Instance"
}

variable "aws_region" {
  type = string
}