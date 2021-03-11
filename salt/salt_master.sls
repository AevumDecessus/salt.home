update salt master config:
  file.managed:
    - name: /etc/salt/master
    - source: salt://files/salt_config/master
    - user: salt
    - group: salt
    - mode: 644
Update salt master log directory:
  file.directory:
    - name: /var/log/salt
    - user: salt
    - group: salt
Update salt master log file:
  file.managed:
    - name: /var/log/salt/master
    - user: salt
    - group: salt
    - mode: 640
    - replace: False
Update salt master run directory:
  file.directory:
    - name: /var/run/salt/master
    - user: salt
    - group: salt
    - recurse:
      - user
      - group
Update salt master cache directory:
  file.directory:
    - name: /var/cache/salt/master
    - user: salt
    - group: salt
    - recurse:
      - user
      - group
Update salt master conf directory:
  file.directory:
    - name: /etc/salt/master.d
    - user: salt
    - group: salt
    - recurse:
      - user
      - group
Update salt master pki directory:
  file.directory:
    - name: /etc/salt/pki/master
    - user: salt
    - group: salt
    - recurse:
      - user
      - group
