/etc/koha/koha-sites.conf:
  file.managed:
    - source: salt://koha/files/koha-sites.conf
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: koha-common
Enable apache rewrite:
  cmd.run:
    - name: a2enmod rewrite
    - onchanges:
      - file: /etc/koha/koha-sites.conf
Enable apache cgi:
  cmd.run:
    - name: a2enmod cgi
    - onchanges:
      - file: /etc/koha/koha-sites.conf
apache2:
  service.running:
    - enable: True
    - watch:
      - cmd: Enable apache rewrite
      - cmd: Enable apache cgi

