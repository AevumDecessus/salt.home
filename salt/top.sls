base:
  '*':
    - common
  'koha.*':
    - koha
  'mqtt.*':
    - mosquitto
  'pihole.*':
    - pihole
  'salt.*':
    - salt_master
  'secrets.*':
    - vault
    - secrets
  'zabbix.*':
    - zabbix_master
