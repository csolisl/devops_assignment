variable "envs" {
  description = "Environments"
  type        = list(string)
  default     = ["QA", "STG", "PROD"]
}
variable "numberFiles" {
  description = "Number of files to create into each folder"
  type        = number
  default     = 10
}
