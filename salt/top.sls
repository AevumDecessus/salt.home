base:
  '*':
    - common
  'bastion.*':
    - bastion
  'consul*':
    - docker_host
  'files.*':
    - nfs_server
  'homeassistant.*':
    - docker_host
    - homeassistant
  'koha.*':
    - koha
  'library.*':
    - koha
  'mqtt.*':
    - mosquitto
  'openassistant.*':
    - home_assistant
  'pihole.*':
    - pihole
  'ptero.*':
    - docker_host
  'salt.*':
    - salt
  'secrets.*':
    - vault
    - secrets
  'server.*':
    - docker_host
  'speedy.*':
    - docker_host
  'tinyca.*':
    - docker_host
  'zabbix.*':
    - zabbix_master
