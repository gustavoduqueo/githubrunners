# VPC CIDR Block
variable "vpc_cidr" {
    type = map(string)
    default = {
      "default" = "192.168.0.0/24"
      "dev"     = "192.168.1.0/24"
    }
}

# VPC CIDR Block
variable "vpc_name" {
    type = map(string)
    default = {
      "default" = "VPCITMGitlabRunnersDefault"
      "dev"     = "VPCITMGitlabRunnersDev"
    }
}