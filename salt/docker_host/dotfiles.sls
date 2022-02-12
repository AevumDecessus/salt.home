Update docker dotfiles repo:
  git.latest:
    - name: https://github.com/aevumdecessus/dotfiles
    - target: /home/docker/dotfiles
    - user: docker
    - require:
      - sls: docker_host.user
Run docker dotfiles install:
  cmd.run:
    - name: /home/docker/dotfiles/install
    - runas: docker
    - creates:
      - /home/docker/.dotfiles_version
    - require:
      - git: 'Update docker dotfiles repo'
