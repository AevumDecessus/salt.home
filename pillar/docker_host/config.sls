---
docker:
  wanted:
    - docker
    - compose
{% if salt['grains.get']('cpuarch') == 'armv7l' %}
  pkg:
    docker:
      version: '19.03.8'
      archive:
        source_hash: b7cb5f0326228413112639fc30583e94d80ac3d9b7cd6636ed01920f0657e99e
    compose:
      use_upstream: none
{% elif salt['grains.get']('cpuarch') == 'aarch64' %}
  pkg:
    docker:
      version: '20.10.11'
      archive:
        source_hash: 87a4219c54552797ffd38790b72832372a90eceb7c8e451c36a682093d57dae6
{% else %}
  pkg:
    docker:
      version: '20.10.11'
      archive:
        source_hash: dd6ff72df1edfd61ae55feaa4aadb88634161f0aa06dbaaf291d1be594099ff3
{% endif %}
