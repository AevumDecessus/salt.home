"Salt automatic state cron":
  cron.present:
    - name: "salt-call state.apply"
    - user: root
    - minute: random
    - hour: random
