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
        address: "127.0.0.1:8200"
        tls_disable: True
        tls_cert_file: ""
        tls_key_file: ""
