ui = true

listener "tcp" {
  address = "0.0.0.0:8200"
}

storage "mysql" {
  address  = "database_mysql:3306"
  database = "vault"
  username = "vault"
  password = "test7355608"
}

telemetry {
  statsite_address = "0.0.0.0:8125"
  disable_hostname = true
}
