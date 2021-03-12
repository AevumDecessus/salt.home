update srv.salt:
  git.latest:
    - name: git@github.com:AevumDecessus/salt.home.git
    - target: /srv
    - user: salt
    - force_clone: True
    - force_reset: True
    - submodules: True
    - identity: /home/salt/.ssh/git_deploy_ed25519
