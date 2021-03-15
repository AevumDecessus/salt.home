fixer_users:
  group.present:
    - name: fixer
    - gid: 7654
    - system: False
  user.absent:
    - name: fixer_users
fixed_fixer:
  user.present:
    - name: fixer
    - fullname: Fixer User
    - shell: /bin/bash
    - home: /home/fixer
    - uid: 7654
    - gid: 7654
    - password: $6$9g9XjICLGkbiIFcR$lI8UBhWs7wxhEohYj1BbxrEy.X6yoXuJWADbsfWOo.0X2NljahUHjyBv9MkagHsx9hXjWBUej7hYu0E2P/9zB0
admin_group:
  group.present:
    - name: admin
    - gid: 4242
    - members:
      - fixer
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
