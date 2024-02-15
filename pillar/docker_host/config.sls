---
docker:
  wanted:
    - docker
    - compose
  pkg:
    docker: 
      version: '23.0.4'
      archive:
{% if salt['grains.get']('cpuarch') == 'armv7l' %}
        source_hash: 5f49fa53197bfd315816a0f2d2a6b86b5f4d9d1058215ddd40ba2a96b1176726 
{% elif salt['grains.get']('cpuarch') == 'aarch64' %}
        source_hash: a2d95045f5a6f6d41f83afefbbf6a53f4fcb919c86fb74bc67321ddf673698c2
{% elif salt['grains.get']('cpuarch') == 'x86_64' %}
        source_hash: 81bd643a32b3428f6d9eafbd9331d0da1577c958c1c2702db1eff7afa1cdf3cd 
{% else %}
        source_hash: dd6ff72df1edfd61ae55feaa4aadb88634161f0aa06dbaaf291d1be594099ff3
{% endif %}
    compose:
      use_upstream: binary
      binary:
        source: https://github.com/docker/compose/releases/download/v2.24.5/docker-compose-linux-{{ salt['grains.get']('cpuarch') }}
{% if salt['grains.get']('cpuarch') == 'armv7l' %}
        source_hash: 80248b4c2c407b22b24896ff6d6e766be7ca97239c5b8137f47c81b62a1befb4
{% elif salt['grains.get']('cpuarch') == 'aarch64' %}
        source_hash: 535e90ff9a7f24384f8a38f9f9ad49125485af7ae5ffda7226d091e5b8126948
{% elif salt['grains.get']('cpuarch') == 'x86_64' %}
        source_hash: 94355be1d1d395040bbda1490f98d5c7627c30798a7955e1f2a78fda33a4b3e1
{% else %}
        source_hash: 94355be1d1d395040bbda1490f98d5c7627c30798a7955e1f2a78fda33a4b3e1
{% endif %}
