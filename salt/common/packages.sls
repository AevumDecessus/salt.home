common_packages:
  pkg.installed:
    - pkgs:
      - htop
      - git
      - jq
      - rsync
      - screen
      - tar
      - tmux
      - {{ salt['pillar.get']('packages:vim') }}
