Koha APT sources:
  pkgrepo.managed:
    - humanname: koha-stable
    - name: deb http://debian.koha-community.org/koha stable main
    - enabled: True
    - key_url: https://debian.koha-community.org/koha/gpg.asc
    - require_in:
      - pkg: koha-common
koha-common:
  pkg.latest:
    - refresh: True
