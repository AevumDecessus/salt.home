koha:
  db_config:
    host: {{ salt['sdb.get']('sdb://aevumvault/salt/koha/db_host') }}
    user: {{ salt['sdb.get']('sdb://aevumvault/salt/koha/db_user') }}
    database: {{ salt['sdb.get']('sdb://aevumvault/salt/koha/db_name') }}
    port: {{ salt['sdb.get']('sdb://aevumvault/salt/koha/db_port') }}
    password: {{ salt['sdb.get']('sdb://aevumvault/salt/koha/db_password') }}
