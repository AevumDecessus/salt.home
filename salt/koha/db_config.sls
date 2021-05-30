include:
  - koha.db_vars
Koha Request DB Config:
  cmd.run:
    - name: koha-create --request-db {{ pillar['koha']['config']['instance'] }}
    - cwd: /etc/koha
    - creates: 
      - /etc/koha/sites/{{ pillar['koha']['config']['instance'] }}
Populate Koha Database:
  cmd.run:
    - name: koha-create --populate-db {{ pillar['koha']['config']['instance'] }}
    - cwd: /etc/koha
    - require:
      - sls: koha.db_vars
    - unless:
      - fun: file.file_exists
        path: /etc/koha/checks/{{ pillar['koha']['config']['instance'] }}-db_done
Enable Koha Instance:
  cmd.run:
    - name: koha-enable {{ pillar['koha']['config']['instance'] }}
    - require:
      - cmd: Populate Koha Database
