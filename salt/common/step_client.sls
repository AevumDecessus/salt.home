Install step client:
  - archive.extracted
    - name: /usr/local/bin/
    - source: https://github.com/smallstep/cli/releases/download/v{{ salt['pillar.get']('step_version', '0.15.13') }}/step_linux_{{ salt['pillar.get']('step_version', '0.15.13') }}_amd64.tar.gz
    - archive_format: tar
    - options: z
    - if_missing: /usr/local/bin/step
