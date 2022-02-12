{% if salt['grains.get']('nodename').startswith('speedy.') %}
docker_host:
  homedir: /fastdata/docker
{% else %}
docker_host:
  homedir: /home/docker
{% endif %}
