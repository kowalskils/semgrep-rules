# fail
# ruleid: gcp-postgresql-log-checkpoints
resource "google_sql_database_instance" "fail" {
  database_version = "POSTGRES_12"
  name             = "general-pos121"
  project          = "gcp-bridgecrew-deployment"
  region           = "us-central1"
  settings {
    activation_policy = "ALWAYS"
    availability_type = "ZONAL"
    database_flags {
      name  = "log_checkpoints"
      value = "off"
    }
    database_flags {
      name  = "log_connections"
      value = "on"
    }
    database_flags {
      name  = "log_disconnections"
      value = "off"
    }
    database_flags {
      name  = "log_min_messages"
      value = "debug6"
    }
    database_flags {
      name  = "log_lock_waits"
      value = "off"
    }
    database_flags {
      name  = "log_temp_files"
      value = "30"
    }
    database_flags {
      name  = "log_min_duration_statement"
      value = "1"
    }
    pricing_plan = "PER_USE"

    tier = "db-custom-1-3840"
  }
}

# ok: gcp-postgresql-log-checkpoints
resource "google_sql_database_instance" "pass" {
  database_version = "POSTGRES_12"
  name             = "general-pos121"
  project          = "gcp-bridgecrew-deployment"
  region           = "us-central1"
  settings {
    activation_policy = "ALWAYS"
    availability_type = "ZONAL"
    database_flags {
      name  = "log_checkpoints"
      value = "on"
    }
    database_flags {
      name  = "log_connections"
      value = "on"
    }
    database_flags {
      name  = "log_disconnections"
      value = "on"
    }
    database_flags {
      name  = "log_min_messages"
      value = "debug5"
    }
    database_flags {
      name  = "log_lock_waits"
      value = "on"
    }
    database_flags {
      name  = "log_temp_files"
      value = "0"
    }
    database_flags {
      name  = "log_min_duration_statement"
      value = "1"
    }
    pricing_plan = "PER_USE"

    tier = "db-custom-1-3840"
  }
}

# ok: gcp-postgresql-log-checkpoints
resource "google_sql_database_instance" "pass2" {
  database_version = "POSTGRES_14"
  name             = "general-pos121"
  project          = "gcp-bridgecrew-deployment"
  region           = "us-central1"
  settings {
    activation_policy = "ALWAYS"
    availability_type = "ZONAL"
    database_flags {
      name  = "log_connections"
      value = "off"
    }
    database_flags {
      name  = "log_disconnections"
      value = "on"
    }
    database_flags {
      name  = "log_min_messages"
      value = "debug6"
    }
    database_flags {
      name  = "log_lock_waits"
      value = "on"
    }
    database_flags {
      name  = "log_temp_files"
      value = "0"
    }
    database_flags {
      name  = "log_min_duration_statement"
      value = "1"
    }
    pricing_plan = "PER_USE"
    tier         = "db-custom-1-3840"
  }
}
