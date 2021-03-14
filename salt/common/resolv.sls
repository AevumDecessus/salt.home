Update resolv.conf:
  file.managed:
    - name: /etc/resolv.conf
    - user: root
    - group: root
    - source: salt://files/common/resolv.conf 
