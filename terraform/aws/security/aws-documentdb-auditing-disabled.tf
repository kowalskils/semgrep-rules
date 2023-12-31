# ok: aws-documentdb-auditing-disabled
resource "aws_docdb_cluster" "pass" {
  cluster_identifier              = "my-docdb-cluster"
  engine                          = "docdb"
  master_username                 = "foo"
  master_password                 = "mustbeeightchars"
  backup_retention_period         = 5
  preferred_backup_window         = "07:00-09:00"
  skip_final_snapshot             = true
  enabled_cloudwatch_logs_exports = ["audit", "profiler"]
}

# ruleid: aws-documentdb-auditing-disabled
resource "aws_docdb_cluster" "fail_1" {
  cluster_identifier      = "my-docdb-cluster"
  engine                  = "docdb"
  master_username         = "foo"
  master_password         = "mustbeeightchars"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = true
}

# ruleid: aws-documentdb-auditing-disabled
resource "aws_docdb_cluster" "fail_2" {
  cluster_identifier              = "my-docdb-cluster"
  engine                          = "docdb"
  master_username                 = "foo"
  master_password                 = "mustbeeightchars"
  backup_retention_period         = 5
  preferred_backup_window         = "07:00-09:00"
  skip_final_snapshot             = true
  enabled_cloudwatch_logs_exports = ["profiler"]
}
