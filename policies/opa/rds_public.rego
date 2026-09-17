package terraform.aws.rds

deny[msg] {
    resource := input.resource.aws_db_instance[name]
    resource.publicly_accessible == true
    msg = sprintf("RDS instance '%v' is publicly accessible, which violates security baseline", [name])
}
