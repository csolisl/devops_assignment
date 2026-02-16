variable "envName" {
  description = "Environment name"
  type        = string
  default     = "QA"
}
variable "numberFiles" {
  description = "Number of files to create into env folder"
  type        = number
  default     = 10
}
variable "inputText" {
  description = "Some text"
  type        = string
  default     = "Texto por defecto."
}