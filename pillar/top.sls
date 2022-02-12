base:
  '*':
    - common
  'consul*':
    - docker_host
  'homeassistant.*':
    - docker_host
  'koha.*':
    - koha
  'library.*':
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
    - docker_host
  'speedy.*':
    - docker_host
    - docker_host.speedy_daemon
  'zabbix.*':
    - zabbix/config
