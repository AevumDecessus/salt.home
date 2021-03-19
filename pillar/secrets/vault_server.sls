vault:
  version: 1.6.3
  platform: linux_arm
  verify_download: True
  config:
    storage:
      file:
        path: /var/lib/vault/data
    listener:
      tcp:
        address: "secrets.home.0n5.us:8200"
        tls_disable: False
        tls_cert_file: "/etc/step-ca/certs/vault/vault.crt"
        tls_key_file: "/etc/step-ca/keys/vault/vault.key"
