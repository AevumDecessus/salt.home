common_packages:
  pkg.installed:
    - pkgs:
      - htop
      - git
      - jq
      - screen
      - tar
      - {{ salt['pillar.get']('packages:vim') }}
