/*
  For First availability zone
*/
/* MRS - Client will be creating the public subnets 
# 1. Create Public Subnet
resource "aws_subnet" "PcfVpcPublicSubnet_az1" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.public_subnet_cidr_az1}"
    availability_zone = "${var.az1}"

    tags {
        Name = "${var.environment}-PcfVpc Public Subnet AZ1"
    }
}
*/

# 2. Create Private Subnets
# 2.1 ERT
resource "aws_subnet" "PcfVpcErtSubnet_az1" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.ert_subnet_cidr_az1}"
    availability_zone = "${var.az1}"

    tags {
        Name = "${var.environment}-PcfVpc Ert Subnet AZ1"
    }
}
# 2.2 RDS
resource "aws_subnet" "PcfVpcRdsSubnet_az1" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.rds_subnet_cidr_az1}"
    availability_zone = "${var.az1}"

    tags {
        Name = "${var.environment}-PcfVpc Rds Subnet AZ1"
    }
}
# 2.3 Services
resource "aws_subnet" "PcfVpcServicesSubnet_az1" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.services_subnet_cidr_az1}"
    availability_zone = "${var.az1}"

    tags {
        Name = "${var.environment}-PcfVpc Services Subnet AZ1"
    }
}

/*
  For Second availability zone. There will not be modification to main routing table as it was already
  done while setting up
*/

/* MRS - Client will be creating the public subnets 
resource "aws_subnet" "PcfVpcPublicSubnet_az2" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.public_subnet_cidr_az2}"
    availability_zone = "${var.az2}"

    tags {
        Name = "${var.environment}-PcfVpc Public Subnet AZ2"
    }
}
*/
resource "aws_subnet" "PcfVpcErtSubnet_az2" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.ert_subnet_cidr_az2}"
    availability_zone = "${var.az2}"

    tags {
        Name = "${var.environment}-PcfVpc Ert Subnet AZ2"
    }
}
resource "aws_subnet" "PcfVpcRdsSubnet_az2" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.rds_subnet_cidr_az2}"
    availability_zone = "${var.az2}"

    tags {
        Name = "${var.environment}-PcfVpc Rds Subnet AZ2"
    }
}
resource "aws_subnet" "PcfVpcServicesSubnet_az2" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.services_subnet_cidr_az2}"
    availability_zone = "${var.az2}"

    tags {
        Name = "${var.environment}-PcfVpc Services Subnet AZ2"
    }
}

/* IGNORING only 2 AZ in Gov CLoud
  For Third availability zone.  There will not be modification to main routing table as it was already
  done while setting up

resource "aws_subnet" "PcfVpcPublicSubnet_az3" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.public_subnet_cidr_az3}"
    availability_zone = "${var.az3}"

    tags {
        Name = "${var.environment}-PcfVpc Public Subnet AZ3"
    }
}
resource "aws_subnet" "PcfVpcErtSubnet_az3" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.ert_subnet_cidr_az3}"
    availability_zone = "${var.az3}"

    tags {
        Name = "${var.environment}-PcfVpc Ert Subnet AZ3"
    }
}

resource "aws_subnet" "PcfVpcRdsSubnet_az3" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.rds_subnet_cidr_az3}"
    availability_zone = "${var.az3}"

    tags {
        Name = "${var.environment}-PcfVpc Rds Subnet AZ3"
    }
}
resource "aws_subnet" "PcfVpcServicesSubnet_az3" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.services_subnet_cidr_az3}"
    availability_zone = "${var.az3}"

    tags {
        Name = "${var.environment}-PcfVpc Services Subnet AZ3"
    }
}
*/
# Infrastructure network  - For bosh director
resource "aws_subnet" "PcfVpcInfraSubnet_az1" {
    vpc_id = "${var.vpc_id}"

    cidr_block = "${var.infra_subnet_cidr_az1}"
    availability_zone = "${var.az1}"

    tags {
        Name = "${var.environment}-PcfVpc Infrastructure Subnet"
    }
}

