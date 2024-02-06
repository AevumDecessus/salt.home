---
docker:
  wanted:
    - docker
    - compose
{% if salt['grains.get']('cpuarch') == 'armv7l' %}
  pkg:
    docker:
      version: '20.10.21'
      archive:
        source_hash: 5f49fa53197bfd315816a0f2d2a6b86b5f4d9d1058215ddd40ba2a96b1176726 
    compose:
      use_upstream: binary
      binary:
        source: https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-linux-armv7
        source_hash: 22cfe5b2eab86a4832f328049cafacc8e7d76c12185ea7bdff7e7c7ce42f5f10
{% elif salt['grains.get']('cpuarch') == 'aarch64' %}
  pkg:
    docker:
      version: '20.10.21'
      archive:
        source_hash: 87a4219c54552797ffd38790b72832372a90eceb7c8e451c36a682093d57dae6
{% elif salt['grains.get']('cpuarch') == 'x86_64' %}
  pkg:
    docker:
      version: '23.0.4'
      archive:
        source_hash: 81bd643a32b3428f6d9eafbd9331d0da1577c958c1c2702db1eff7afa1cdf3cd 
{% else %}
  pkg:
    docker:
      version: '20.10.21'
      archive:
        source_hash: dd6ff72df1edfd61ae55feaa4aadb88634161f0aa06dbaaf291d1be594099ff3
{% endif %}
