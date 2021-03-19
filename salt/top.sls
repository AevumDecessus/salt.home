base:
  '*':
    - common
  'mqtt.*':
    - mosquitto
  'pihole.*':
    - pihole
  'salt.*':
    - salt_master
  'secrets.*':
    - vault
    - secrets.vault_cert
