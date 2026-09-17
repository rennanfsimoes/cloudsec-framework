package terraform.security

# Rule: S3 buckets must have server-side encryption enabled
deny[msg] {
    resource := input.resource_changes[_]
    resource.type == "aws_s3_bucket"
    not has_encryption(resource)
    msg := sprintf("Security Violation: S3 Bucket '%v' must have KMS server-side encryption configured.", [resource.name])
}

has_encryption(resource) {
    resource.change.after.server_side_encryption_configuration[_]
}
