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
  'speedy.*':
    - docker_host
