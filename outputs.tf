output "environment" {
    value = "${var.environment}"
}
output "region" {
    value = "${var.aws_region}"
}
output "az1" {
    value = "${var.az1}"
}
output "az2" {
    value = "${var.az2}"
}
/*
output "az3" {
    value = "${var.az3}"
}
*/
output "vpc_id" {
    value = "${var.vpc_id}"
}
output "vpc_cidr" {
    value = "${var.vpc_cidr}"
}
output "pcf_security_group" {
    value = "${aws_security_group.pcfSG.id}"
}
# s3 buckets
output "s3_pcf_bosh" {
    value = "${aws_s3_bucket.pcf-bosh.bucket}"
}
output "s3_buildpacks" {
    value = "${aws_s3_bucket.pcf-buildpacks.bucket}"
}
output "s3_pcf_droplets" {
    value = "${aws_s3_bucket.pcf-droplets.bucket}"
}
output "s3_pcf_packages" {
    value = "${aws_s3_bucket.pcf-packages.bucket}"
}
output "s3_pcf_resources" {
    value = "${aws_s3_bucket.pcf-resources.bucket}"
}

# DNS
output "dns" {
    value = "${cidrhost("${var.vpc_cidr}", 2)}"
}

# AZ1

/*
output "public_subnet_cidr_az1" {
    value = "${var.public_subnet_cidr_az1}"
}
*/
output "ert_subnet_cidr_az1" {
    value = "${var.ert_subnet_cidr_az1}"
}

output "ert_subnet_gw_az1" {
    value = "${cidrhost("${var.ert_subnet_cidr_az1}", 1)}"
}

output "rds_subnet_cidr_az1" {
    value = "${var.rds_subnet_cidr_az1}"
}

output "services_subnet_cidr_az1" {
    value = "${var.services_subnet_cidr_az1}"
}

output "services_subnet_gw_az1" {
    value = "${cidrhost("${var.services_subnet_cidr_az1}", 1)}"
}
/*
output "public_subnet_id_az1" {
    value = "${aws_subnet.PcfVpcPublicSubnet_az1.id}"
}
*/
output "ert_subnet_id_az1" {
    value = "${aws_subnet.PcfVpcErtSubnet_az1.id}"
}
output "rds_subnet_id_az1" {
    value = "${aws_subnet.PcfVpcRdsSubnet_az1.id}"
}
output "services_subnet_id_az1" {
    value = "${aws_subnet.PcfVpcServicesSubnet_az1.id}"
}
output "infra_subnet_id_az1" {
    value = "${aws_subnet.PcfVpcInfraSubnet_az1.id}"
}
output "infra_subnet_cidr_az1" {
    value = "${var.infra_subnet_cidr_az1}"
}
output "infra_subnet_gw_az1" {
    value = "${cidrhost("${var.infra_subnet_cidr_az1}", 1)}"
}


# AZ2
/*
output "public_subnet_cidr_az2" {
    value = "${var.public_subnet_cidr_az2}"
}
*/
output "ert_subnet_cidr_az2" {
    value = "${var.ert_subnet_cidr_az2}"
}
output "ert_subnet_gw_az2" {
    value = "${cidrhost("${var.ert_subnet_cidr_az2}", 1)}"
}

output "rds_subnet_cidr_az2" {
    value = "${var.rds_subnet_cidr_az2}"
}
output "services_subnet_cidr_az2" {
    value = "${var.services_subnet_cidr_az2}"
}
output "services_subnet_gw_az2" {
    value = "${cidrhost("${var.services_subnet_cidr_az2}", 1)}"
}
/*
output "public_subnet_id_az2" {
    value = "${aws_subnet.PcfVpcPublicSubnet_az2.id}"
}
*/
output "ert_subnet_id_az2" {
    value = "${aws_subnet.PcfVpcErtSubnet_az2.id}"
}
output "rds_subnet_id_az2" {
    value = "${aws_subnet.PcfVpcRdsSubnet_az2.id}"
}
output "services_subnet_id_az2" {
    value = "${aws_subnet.PcfVpcServicesSubnet_az2.id}"
}

#AZ3
/*  ONLY ONE AZ
output "public_subnet_cidr_az3" {
    value = "${var.public_subnet_cidr_az3}"
}
output "ert_subnet_cidr_az3" {
    value = "${var.ert_subnet_cidr_az3}"
}

output "ert_subnet_gw_az3" {
    value = "${cidrhost("${var.ert_subnet_cidr_az3}", 1)}"
}

output "rds_subnet_cidr_az3" {
    value = "${var.rds_subnet_cidr_az3}"
}
output "services_subnet_cidr_az3" {
    value = "${var.services_subnet_cidr_az3}"
}

output "public_subnet_id_az3" {
    value = "${aws_subnet.PcfVpcPublicSubnet_az3.id}"
}
output "services_subnet_gw_az3" {
    value = "${cidrhost("${var.services_subnet_cidr_az3}", 1)}"
}
output "ert_subnet_id_az3" {
    value = "${aws_subnet.PcfVpcErtSubnet_az3.id}"
}
output "rds_subnet_id_az3" {
    value = "${aws_subnet.PcfVpcRdsSubnet_az3.id}"
}
output "services_subnet_id_az3" {
    value = "${aws_subnet.PcfVpcServicesSubnet_az3.id}"
}

# RDS info

output "db_host" {
    value = "${aws_db_instance.pcf_rds.address}"
}
output "db_port" {
    value = "${aws_db_instance.pcf_rds.port}"
}
output "db_username" {
    value = "${aws_db_instance.pcf_rds.username}"
}
output "db_database" {
    value = "${aws_db_instance.pcf_rds.name}"
}
*/
