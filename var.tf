variable "access_key" {
  default = ""
  }
variable "secret_key" {
  default = ""
  }
variable "region" {
  default = "ap-south-1"
  }
variable "s3_name" {
  default = "acgauto-main"  
  }

variable "path_csr" {
  default = "D:\\vscode_workspace\\Rohit-Project\\deployment\\s3_Data"
}

variable "path_srep" {
  default = "D:\\vscode_workspace\\Rohit-Project\\deployment\\s3_Data"
}

variable "s3-object-list" {
  description = "Create s3 object with these names"
  type = list(string)
  default = ["csr", "srep"]
  
}
