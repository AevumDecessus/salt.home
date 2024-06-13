motd_packages:
  pkg.installed:
    - pkgs:
      - figlet
      - lsb-release
symbolic-motd:
  file.symlink:
    - name: /etc/motd
    - target: /var/run/motd
    - force: True
    - backupname: bak

dynamic-motd:
  file.recurse:
    - name: /etc/update-motd.d/
    - source: salt://files/common/motd/
    - file_mode: 755
    - clean:  True
motd-remove-exec-colors:
  file.managed:
    - name: /etc/update-motd.d/colors
    - mode: 644
    - require:
      - file: dynamic-motd
