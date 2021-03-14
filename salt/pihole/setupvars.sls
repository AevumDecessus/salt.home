manage the setupvars file: 
  file.managed:
    - name: /etc/pihole/setupVars.conf
    - source: salt://pihole/files/setupVars.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - requires:
      - file.directory: /etc/pihole
  cmd.run:
    - name: pihole -r
    - onchanges:
      - file: /etc/pihole/setupVars.conf
