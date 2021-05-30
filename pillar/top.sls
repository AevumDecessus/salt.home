base:
  '*':
    - common
  'koha.*':
    - koha
  'mqtt.*':
    - mqtt.server
  'openassistant.*':
    - open_assistant.server
  'pihole.*':
    - pihole.setupvars
  'secrets.*':
    - secrets.vault_server
  'server.*':
    - db_config
