"Salt automatic docker prune cron":
  cron.present:
    - name: "docker image prune -a -f"
    - user: docker
    - minute: random
    - hour: random
    - dayweek: random
