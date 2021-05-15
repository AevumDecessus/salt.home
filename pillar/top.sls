base:
  '*':
    - common
  'mqtt.*':
    - mqtt.server
  'pihole.*':
    - pihole.setupvars
  'secrets.*':
    - secrets.vault_server
  'server.*':
    - db_config
