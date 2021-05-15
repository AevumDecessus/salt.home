common_packages:
  pkg.installed:
    - pkgs:
      - htop
      - git
      - jq
      - pipenv
      - {{ salt['pillar.get']('packages:vim') }}
