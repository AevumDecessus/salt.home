Enable Vault Service Timer:
  service.running:
    - enable: True
    - name: cert-renewer@vault.timer
    - onchanges: 
      - /etc/systemd/system/cert-renewer@.service
      - /etc/systemd/system/cert-renewer@.timer
  module.run:
    - name: service.systemctl_reload
    - onchanges:
      - /etc/systemd/system/*
