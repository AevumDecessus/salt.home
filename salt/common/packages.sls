common_packages:
  pkg.installed:
    - pkgs:
      - htop
      - git
      - jq
      - {{ salt['pillar.get']('packages:vim') }}
