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
    - pihole.resolv
    - pihole.setupvars
  'ptero.*':
    - docker_host
    - docker_host.home_daemon
  'salt.*':
    - salt_master
  'secrets.*':
    - secrets.vault_server
  'server.*':
    - docker_host
  'speedy.*':
    - docker_host
    - docker_host.speedy_daemon
  'tinyca.*':
    - docker_host
  'zabbix.*':
    - zabbix/config
