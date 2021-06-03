nuke default pi user:
  user.absent:
    - name: pi
  group.absent:
    - name: pi
nuke default ubuntu user:
  user.absent:
    - name: ubuntu
  group.absent:
    - name: ubuntu
nuke default centos user:
  user.absent:
    - name: centos
  group.absent:
    - name: centos
nuke default wheel group:
  group.absent:
    - name: wheel
nuke default sudo group:
  group.absent:
    - name: sudo
media_users:
  group.present:
    - name: media
    - gid: 2001
camera_users:
  group.present:
    - name: camera
    - gid: 2002
plex_users:
  group.present:
    - name: plex
    - gid: 2003
calibre_users:
  group.present:
    - name: calibre
    - gid: 2004
misc_users:
  group.present:
    - name: misc
    - gid: 2005
everyone_users:
  group.present:
    - name: everyone
    - gid: 2006
secure_users:
  group.present:
    - name: secure
    - gid: 2007
fixer_users:
  group.present:
    - name: fixer
    - gid: 7654
    - system: False
  user.present:
    - name: fixer
    - fullname: Fixer User
    - shell: /bin/bash
    - home: /home/fixer
    - uid: 7654
    - gid: 7654
    - createhome: true
    - optional_groups:
      - media
    - password: $6$9g9XjICLGkbiIFcR$lI8UBhWs7wxhEohYj1BbxrEy.X6yoXuJWADbsfWOo.0X2NljahUHjyBv9MkagHsx9hXjWBUej7hYu0E2P/9zB0
    - require:
      - group: fixer
      - group: media
  ssh_auth.manage:
    - user: fixer
    - source: salt://files/ssh_keys/fixer_keys
    - ssh_keys:
      - AAAAC3NzaC1lZDI1NTE5AAAAIKguioxb528BXrSrJ/3v4eSBX2zi1ukPzadIuIvKQhZ5
      - AAAAC3NzaC1lZDI1NTE5AAAAIImlLeTqPZDaVe9RMc+LSKUnaTaOlTxvvdefx6CJg9E4
    - require:
      - user: fixer
admin_group:
  group.present:
    - name: admin
    - gid: 4242
    - members:
      - fixer
    - require:
      - user: fixer
