update pihole install script:
  git.cloned:
    - name: https://github.com/pi-hole/pi-hole.git
    - target: /opt/pihole-install
pre-make etc pihole directory:
  file.directory:
    - name: /etc/pihole
    - user: root
    - group: root
    - dir_mode: 755
install pihole:
  cmd.run:
    - name: bash -x ./basic-install.sh --unattended
    - cwd: "/opt/pihole-install/automated install"
    - env:
      - TERM: xterm
    - creates:
      - /etc/pihole/install.log
    - requires:
      - file.managed: /etc/pihole/setupVars.conf
