Update resolv.conf:
  file.managed:
    - name: /etc/resolv.conf
    - user: root
    - group: root
    - template: jinja
    - source: salt://files/common/resolv.conf 
Disable systemd-resolved:
  service.dead:
    - name: systemd-resolved
    - enable: false
Disable resolveconf service:
  service.dead:
    - name: resolvconf
    - enable: false
