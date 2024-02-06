Make resolved.conf.d directory:
  file.directory:
    - name: /etc/systemd/resolved.conf.d
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
Update home resolved.conf:
  file.managed:
    - name: /etc/systemd/resolved.conf.d/home.0n5.us.conf
    - user: root
    - group: root
    - template: jinja
    - source: salt://files/common/home.0n5.us.conf
    - require:
      - file: /etc/systemd/resolved.conf.d
Enable systemd-resolved:
  service.running:
    - name: systemd-resolved
    - enable: true
    - watch:
      - file: /etc/systemd/resolved.conf.d/*
Force resolve.conf symlink:
  file.symlink:
    - name: /etc/resolv.conf
    - target: /run/systemd/resolve/resolv.conf
    - force: true
