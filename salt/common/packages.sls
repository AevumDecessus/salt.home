common_packages:
  pkg.installed:
    - pkgs:
      - htop
      - git
      - jq
      - tar
      - {{ salt['pillar.get']('packages:vim') }}
