---
salt_formulas:
  git_opts:
    default:
      baseurl: https://github.com/aevumdecessus
      basedir: /srv/formulas
      update: true
  list:
    base:
      - chrony-formula
      - docker-formula
      - openssh-formula
      - salt-formula
      - salt-formula-home-assistant
      - salt-formula-linux
      - salt-formula-mosquitto
      - sudoers-formula
      - vault-formula
      - zabbix-formula
