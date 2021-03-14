dnsmasq-reverse:
  file.managed:
    - name: /etc/dnsmasq.d/99-custom-reverse.conf
    - source: salt://pihole/files/dnsmasq-reverse.conf
    - user: root
    - group: root
  cmd.run:
    - name: pihole restartdns
    - onchanges:
      - file: /etc/dnsmasq.d/*
