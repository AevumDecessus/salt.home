common_users:
  group.present:
    - name: fixer
    - gid: 7654
    - system: False
  user.present:
    - fullname: Fixer User
    - shell: /bin/bash
    - home: /home/fixer
    - uid: 7654
    - gid: 7654
    - groups:
      - wheel
      - fixer
