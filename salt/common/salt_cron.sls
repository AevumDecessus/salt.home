salt-call state.apply:
  cron.present:
    - user: root
    - minute: random
    - hour: random
