Update padd repo:
  git.latest:
    - name: https://github.com/pi-hole/PADD.git
    - target: /home/fixer/padd
    - user: fixer
    - require:
      - sls: common.users
    - force_reset: True
