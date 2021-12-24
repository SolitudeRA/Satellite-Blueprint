ui = true

listener "tcp" {
  address         = "0.0.0.0:8200"
  cluster_address = "0.0.0.0:8201"
  tls_disable     = true
}

storage "postgresql" {
  connection_url = "postgresql://postgres_user:postgres_password@security_postgresql:5432/vault?sslmode=disable"
  table          = "vault_kv_store"
  ha_enabled     = true
  ha_table       = "vault_ha_locks"
}

api_addr     = "https://0.0.0.0:8200"
cluster_addr = "https://0.0.0.0:8201"
