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
  'salt.*':
    - salt_master
  'secrets.*':
    - secrets.vault_server
  'server.*':
    - db_config
  'speedy.*':
    - docker_host
