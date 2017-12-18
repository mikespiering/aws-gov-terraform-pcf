variable "aws_access_key" {
	 default = ""
}
variable "aws_secret_key" {
	 default = ""
}
/*This is a prefix that will be put in front of all the AWS objects */
variable "environment" {
	 default = ""
}
variable "aws_region" {
	 default = "us-gov-west-1"
}
/*The name of the AWS key (no .pem extension) */
variable "aws_key_name" {
        default = ""
}
/* RDS Username to create*/
variable "rds_db_username" {
	 default = ""
}
/*Password for RDS user to create */
variable "rds_db_password" {
	 default = ""
}
/*Get the latest AWS Govcloud AMI for your PCF version from network.pivotal.io under Opsman */
variable "opsman_ami" {
	 default = "ami-fad1539b"
}
/*The Ami for an AWS NAT-doesn’t change often */
variable "amis_nat" {
        default = "ami-3f0a8f5e"
}
variable "az1" {
	 default = "us-gov-west-1a"
}
variable "az2" {
	 default = "us-gov-west-1b"
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
variable "vpc_id" {
    description = "VPC ID"
    default = ""
}
/*Private CIDR for the VPC to use */
variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
    default = "/16"
}

variable "public_subnet_az1_id" {
    description = "subnet for client provided subnet"
    default = ""
}

variable "public_subnet_az2_id" {
    description = "subnet for client provided subnet"
    default = ""
}

/*
  Availability Zone 1
*/

# ERT subnet
variable "ert_subnet_cidr_az1" {
    description = "CIDR for the Private Subnet 1"
    default = "/20"
}
# RDS subnet
variable "rds_subnet_cidr_az1" {
    description = "CIDR for the RDS Subnet 1"
    default = "/24"
}
# Services subnet
variable "services_subnet_cidr_az1" {
    description = "CIDR for the Services Subnet 1"
    default = "/20"
}
/*NAT Ip address from the public subnet 1 to use */
variable "nat_ip_az1" {
    default = ""
}
/*IP address from public subnet to use for opman*/
variable "opsman_ip_az1" {
    default = ""
}

/*
  Availability Zone 2
*/

variable "ert_subnet_cidr_az2" {
    description = "CIDR for the Private Subnet 2"
    default = "/20"
}
# RDS subnet
variable "rds_subnet_cidr_az2" {
    description = "CIDR for the RDS Subnet 2"
    default = "/24"
}
# Services subnet
variable "services_subnet_cidr_az2" {
    description = "CIDR for the Services Subnet 2"
    default = "/20"
}
/*NAT Ip address from the public subnet 2 to use */
variable "nat_ip_az2" {
    default = ""
}
