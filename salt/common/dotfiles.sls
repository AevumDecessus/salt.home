Update dotfiles repo:
  git.latest:
    - name: https://github.com/aevumdecessus/dotfiles
    - target: /home/fixer/dotfiles
    - user: fixer
    - require:
      - sls: common.users
    - force_reset: True
Run dotfiles install:
  cmd.run:
    - name: /home/fixer/dotfiles/install
    - runas: fixer
    - creates:
      - /home/fixer/.dotfiles_version
    - require:
      - git: 'Update dotfiles repo'
    - force_reset: True
