common_packages:
  pkg.installed:
    - pkgs:
      - htop
      - git
      - jq
      - rsync
      - screen
      - tar
      - {{ salt['pillar.get']('packages:vim') }}
