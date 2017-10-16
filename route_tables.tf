# Routing Tables for all subnets
/* MRS Will be defined by the client
resource "aws_route_table" "PublicSubnetRouteTable" {
    vpc_id = "${var.vpc_id}"

    route {
        cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_vpn_gateway_attachment.vpn_attachment.vpn_gateway_id}"
    }

    tags {
        Name = "${var.environment}-Public Subnet Route Table"
    }
}

*/
# AZ1 Routing table
resource "aws_route_table" "PrivateSubnetRouteTable_az1" {
    vpc_id = "${var.vpc_id}"

    route {
        cidr_block = "0.0.0.0/0"
        instance_id = "${aws_instance.nat_az1.id}"
    }

    tags {
        Name = "${var.environment}-Private Subnet Route Table AZ1"
    }
}

# AZ2 Routing table
resource "aws_route_table" "SubnetRouteTable_az2" {
    vpc_id = "${var.vpc_id}"

    route {
        cidr_block = "0.0.0.0/0"
        instance_id = "${aws_instance.nat_az2.id}"
    }

    tags {
        Name = "${var.environment}-Private Subnet Route Table AZ2"
    }
}
/*
# AZ3 Routing table
resource "aws_route_table" "SubnetRouteTable_az3" {
    vpc_id = "${var.vpc_id}"

    route {
        cidr_block = "0.0.0.0/0"
        instance_id = "${aws_instance.nat_az3.id}"
    }

    tags {
        Name = "${var.environment}-Private Subnet Route Table AZ3"
    }
}
*/
