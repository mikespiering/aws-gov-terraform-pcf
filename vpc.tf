/*
  For Region
*/
/* MRS- Customer will be supplying their own VPC 
resource "aws_vpc" "PcfVpc" {
    cidr_block = "${var.vpc_cidr}"
    enable_dns_hostnames = true
    tags {
        Name = "${var.environment}-terraform-pcf-vpc"
    }
}
*/



/* MRS - NO Internet Gateway, replace with a vpn gateway attachment.
resource "aws_internet_gateway" "internetGw" {
    vpc_id = "${var.vpc_id}"
    tags {
        Name = "${var.environment}-internet-gateway"
    }
}
*/

/* MRS - This assumes there is an existing gateway that needs to be attached to the VPC */
/* this will already be configured- no need to attach 
resource "aws_vpn_gateway_attachment" "vpn_attachment" {
  vpc_id         = "${var.vpc_id}"
  vpn_gateway_id = "${var.aws_vpn_gateway_id}"
}
*/
/* MRS- Client provided NAT
# 3. NAT instance setup
# 3.1 Security Group for NAT
resource "aws_security_group" "nat_instance_sg" {
    name = "${var.environment}-nat_instance_sg"
    description = "${var.environment} NAT Instance Security Group"
    vpc_id = "${var.vpc_id}"
    tags {
        Name = "${var.environment}-NAT intance security group"
    }
    ingress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["${var.vpc_cidr}"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}
# 3.2 Create NAT instance
resource "aws_instance" "nat_az1" {
    ami = "${var.amis_nat}"
    availability_zone = "${var.az1}"
    instance_type = "${var.nat_instance_type}"
    key_name = "${var.aws_key_name}"
    vpc_security_group_ids = ["${aws_security_group.nat_instance_sg.id}"]
    subnet_id = "${aws_subnet.PcfVpcPublicSubnet_az1.id}"
    associate_public_ip_address = false 
    source_dest_check = false
    private_ip = "${var.nat_ip_az1}"

    tags {
        Name = "${var.environment}-Nat Instance az1"
    }
}

resource "aws_instance" "nat_az2" {
    ami = "${var.amis_nat}"
    availability_zone = "${var.az2}"
    instance_type = "${var.nat_instance_type}"
    key_name = "${var.aws_key_name}"
    vpc_security_group_ids = ["${aws_security_group.nat_instance_sg.id}"]
    subnet_id = "${aws_subnet.PcfVpcPublicSubnet_az2.id}"
    associate_public_ip_address = false 
    source_dest_check = false
    private_ip = "${var.nat_ip_az2}"

    tags {
        Name = "${var.environment}-Nat Instance az2"
    }
}
*/
/* Ignoring AZ 3 Gov Cloud only offers 2 at the moment.
# NAT Insance
resource "aws_instance" "nat_az3" {
    ami = "${var.amis_nat}"
    availability_zone = "${var.az3}"
    instance_type = "${var.nat_instance_type}"
    key_name = "${var.aws_key_name}"
    vpc_security_group_ids = ["${aws_security_group.nat_instance_sg.id}"]
    subnet_id = "${aws_subnet.PcfVpcPublicSubnet_az3.id}"
    associate_public_ip_address = true
    source_dest_check = false
    private_ip = "${var.nat_ip_az3}"

    tags {
        Name = "${var.environment}-Nat Instance az3"
    }
}
*/
