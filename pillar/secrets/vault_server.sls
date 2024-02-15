vault:
  version: 1.15.5
  platform: linux_arm
  verify_download: True
  config:
    log_level: info
    log_file: /var/log/vault/vault
    log_rotate_duration: 24h
    log_rotate_max_files: 14
    storage:
      file:
        path: /var/lib/vault/data
    listener:
      tcp:
        address: "secrets.home.0n5.us:8200"
        tls_disable: False
        tls_cert_file: "/etc/step-ca/certs/vault/vault.crt"
        tls_key_file: "/etc/step-ca/keys/vault/vault.key"
