salt user creation:
  group.present:
    - name: salt
    - gid: 8913
    - system: False
  user.present:
    - name: salt
    - fullname: Salt User
    - shell: /bin/bash
    - home: /home/salt
    - uid: 8913
    - gid: 8913
    - groups:
      - salt
