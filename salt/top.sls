base:
  '*':
    - common
  'files.*':
    - nfs_server
  'koha.*':
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
  'speedy.*'
    - docker_host
  'zabbix.*':
    - zabbix_master
