koha:
  db_config:
    host: {{ salt['sdb.get']('sdb://aevumvault/salt/data/koha/db_host') }}
    user: {{ salt['sdb.get']('sdb://aevumvault/salt/data/koha/db_user') }}
    database: {{ salt['sdb.get']('sdb://aevumvault/salt/data/koha/db_name') }}
    port: {{ salt['sdb.get']('sdb://aevumvault/salt/data/koha/db_port') }}
    password: {{ salt['sdb.get']('sdb://aevumvault/salt/data/koha/db_password') }}
