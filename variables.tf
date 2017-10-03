variable "aws_access_key" {
	default = "AKIALR35VXXKOQXY3Y3A"
}
variable "aws_secret_key" {
	default = "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"
}
variable "environment" {
	default = "mrs"
}
variable "aws_region" {
	default = "us-gov-west-1"
}
variable "aws_key_name" {
        default = "mspiering-govcloud"
}
variable "aws_cert_arn" {
        default = "arn:aws-us-gov:acm:us-gov-west-1:188453446942:certificate/a6345fdb-5538-4f32-b75d-ee163e37d0a1"
}
variable "rds_db_username" {
	default = "rdsmspiering"
}
variable "rds_db_password" {
	default = "|JIQ#aQ-zcNy"
}
variable "opsman_ami" {
	default = "ami-fad1539b"
}
variable "amis_nat" {
        default = "ami-3f0a8f5e"
}
variable "az1" {
	default = "us-gov-west-1a"
}
variable "az2" {
	default = "us-gov-west-1b"
}
/*MRS - existing gateway to attach */
variable "aws_vpn_gateway_id" {
	 default = "vgw-b8fe9e9b"
}

variable "opsman_instance_type" {
    description = "Instance Type for OpsMan"
    default = "m3.large"
}

variable "nat_instance_type" {
    description = "Instance Type for NAT instances"
    default = "t2.medium"
}
variable "db_instance_type" {
    description = "Instance Type for RDS instance"
    default = "db.m3.large"
}
variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
    default = "10.0.0.0/16"
}
/*
  Availability Zone 1
*/

# public subnet
variable "public_subnet_cidr_az1" {
    description = "CIDR for the Public Subnet 1"
    default = "10.0.0.0/24"
}
# ERT subnet
variable "ert_subnet_cidr_az1" {
    description = "CIDR for the Private Subnet 1"
    default = "10.0.16.0/20"
}
# RDS subnet
variable "rds_subnet_cidr_az1" {
    description = "CIDR for the RDS Subnet 1"
    default = "10.0.3.0/24"
}
# Services subnet
variable "services_subnet_cidr_az1" {
    description = "CIDR for the Services Subnet 1"
    default = "10.0.64.0/20"
}

variable "nat_ip_az1" {
    default = "10.0.0.6"
}
variable "opsman_ip_az1" {
    default = "10.0.0.7"
}

/*
  Availability Zone 2
*/


variable "public_subnet_cidr_az2" {
    description = "CIDR for the Public Subnet 2"
    default = "10.0.1.0/24"
}
variable "ert_subnet_cidr_az2" {
    description = "CIDR for the Private Subnet 2"
    default = "10.0.32.0/20"
}
# RDS subnet
variable "rds_subnet_cidr_az2" {
    description = "CIDR for the RDS Subnet 2"
    default = "10.0.4.0/24"
}
# Services subnet
variable "services_subnet_cidr_az2" {
    description = "CIDR for the Services Subnet 2"
    default = "10.0.80.0/20"
}

variable "nat_ip_az2" {
    default = "10.0.1.6"
}

/*
  Availability Zone 3 IGNORING, Only 2 AZ in Gov Cloud At the moment

variable "public_subnet_cidr_az3" {
    description = "CIDR for the Public Subnet 3"
    default = "10.0.2.0/24"
}
variable "ert_subnet_cidr_az3" {
    description = "CIDR for the Private Subnet 3"
    default = "10.0.48.0/20"
}
*/

# RDS subnet
variable "rds_subnet_cidr_az3" {
    description = "CIDR for the RDS Subnet 3"
    default = "10.0.5.0/24"
}
# Services subnet
variable "services_subnet_cidr_az3" {
    description = "CIDR for the Services Subnet 3"
    default = "10.0.96.0/20"
}

# Services subnet
variable "infra_subnet_cidr_az1" {
    description = "CIDR for the infrastructure"
    default = "10.0.6.0/24"
}
/*
variable "nat_ip_az3" {
    default = "10.0.2.6"
}
*/
/*
variable "route53_zone_id" {
    default = "ZG7DC4PX2OYY4"
}
*/