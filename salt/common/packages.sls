common_packages:
  pkg.installed:
    - pkgs:
      - htop
      - jq
      - {{ salt['pillar.get']('packages:vim') }}
