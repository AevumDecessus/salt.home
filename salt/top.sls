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
  'salt.*':
    - salt
  'secrets.*':
    - vault
    - secrets
  'server.*':
    - docker_host
  'speedy.*':
    - docker_host
  'zabbix.*':
    - zabbix_master
