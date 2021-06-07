common_packages:
  pkg.installed:
    - pkgs:
      - htop
      - git
      - jq
      - tar
      - pipenv
      - {{ salt['pillar.get']('packages:vim') }}
