docker_group:
  group.present:
    - name: docker
    - gid: 3001
    - require:
      - sls: common.users
docker_user:
  user.present:
    - name: docker
    - fullname: Docker
    - shell: /bin/bash
    - home: {{ salt['pillar.get']('docker_host:homedir') }}
    - uid: 3001
    - gid: 3001
    - createhome: true
    - optional_groups:
      - calibre 
      - camera
      - media
      - misc
    - require: 
      - sls: common.users
      - group: docker_group
