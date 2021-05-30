base:
  '*':
    - common
  'koha.*':
    - koha
  'mqtt.*':
    - mosquitto
  'openassistant.*':
    - home_assistant
  'pihole.*':
    - pihole
  'salt.*':
    - salt_master
  'secrets.*':
    - vault
    - secrets
  'zabbix.*':
    - zabbix_master
