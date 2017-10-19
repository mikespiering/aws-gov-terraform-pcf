/*
  Security Group Definitions
*/

/*
  Ops Manager Security group
*/
# IGNORING For Gov Cloud
resource "aws_security_group" "directorSG" {
    name = "${var.environment}-pcf_director_sg"
    description = "Allow incoming connections for Ops Manager."
    vpc_id = "${var.vpc_id}"
    tags {
        Name = "${var.environment}-Ops Manager Director Security Group"
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["${var.vpc_cidr}"]
        self  = true
   #     security_groups = ["${aws_security_group.pcfSG.id}"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}




/*
  PCF VMS Security group
*/
resource "aws_security_group" "pcfSG" {
    name = "${var.environment}-pcf_vms_sg"
    description = "Allow connections between PCF VMs."
    vpc_id = "${var.vpc_id}"
    tags {
        Name = "${var.environment}-PCF VMs Security Group"
    }
    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["${var.vpc_cidr}"]
     #   self = true
        security_groups = ["${aws_security_group.directorSG.id}"]
}
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}

/*
  RDS Security group
*/
resource "aws_security_group" "rdsSG" {
    name = "${var.environment}-pcf_rds_sg"
    description = "Allow incoming connections for RDS."
    vpc_id = "${var.vpc_id}"
    tags {
        Name = "${var.environment}-RDS Security Group"
    }
    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["${var.vpc_cidr}"]
        security_groups = ["${aws_security_group.directorSG.id}"]  
  }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

}
/*
resource "aws_security_group_rule" "directorToPCFVms" {
  type            = "ingress"
  from_port       = 0
  to_port         = 0
  protocol        = -1
  security_group_id = "${aws_security_group.directorSG.id}"
  source_security_group_id = "${aws_security_group.pcfSG.id}"
}
*/