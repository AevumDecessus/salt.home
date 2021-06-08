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
  'zabbix.*':
    - zabbix_master
