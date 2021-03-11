update salt master config:
  file.managed:
    - name: /etc/salt/master
    - source: salt://files/salt_config/master
    - user: root
    - group: root
    - mode: 644
