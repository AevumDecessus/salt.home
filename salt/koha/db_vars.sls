change mysql server config:
  xml.value_present:
    - name: /etc/koha/sites/{{ pillar['koha']['config']['instance'] }}/koha-conf.xml
    - xpath: /config/hostname
    - value: {{ pillar['koha']['db_config']['host'] }}
    - require:
      - cmd: Koha Request DB Config
change koha db password:
  xml.value_present:
    - name: /etc/koha/sites/{{ pillar['koha']['config']['instance'] }}/koha-conf.xml
    - xpath: /config/pass
    - value: {{ pillar['koha']['db_config']['password'] }}
    - require:
      - cmd: Koha Request DB Config
change koha mariadb user:
  xml.value_present:
    - name: /etc/koha/sites/{{ pillar['koha']['config']['instance'] }}/koha-conf.xml
    - xpath: /config/user
    - value: {{ pillar['koha']['db_config']['user'] }}
    - require:
      - cmd: Koha Request DB Config
change koha mariadb port:
  xml.value_present:
    - name: /etc/koha/sites/{{ pillar['koha']['config']['instance'] }}/koha-conf.xml
    - xpath: /config/port
    - value: {{ pillar['koha']['db_config']['port'] }}
    - require:
      - cmd: Koha Request DB Config
change koha mariadb database:
  xml.value_present:
    - name: /etc/koha/sites/{{ pillar['koha']['config']['instance'] }}/koha-conf.xml
    - xpath: /config/database
    - value: {{ pillar['koha']['db_config']['database'] }}
    - require:
      - cmd: Koha Request DB Config
