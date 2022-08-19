Update resolv.conf:
  file.managed:
    - name: /etc/resolv.conf
    - user: root
    - group: root
    - template: jinja
    - source: salt://files/common/resolv.conf 
