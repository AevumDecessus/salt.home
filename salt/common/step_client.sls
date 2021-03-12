Install step cli:
  archive.extracted:
    - name: /usr/local/bin/
    - source: https://github.com/smallstep/cli/releases/download/v{{ salt['pillar.get']('step_client:version', '0.15.13') }}/step_linux_{{ salt['pillar.get']('step_client:version', '0.15.13') }}_{{ salt['pillar.get']('step_client:arch', 'amd64') }}.tar.gz
    - source_hash: {{ salt['pillar.get']('step_client:hash', 'sha256=f1c20bea85b68692cbd18b2f6581617f4490dc529137f6c56cbc386bf545ca43') }}
    - archive_format: tar
    - enforce_toplevel: False
    - options: z --strip-components=2 step_{{ salt['pillar.get']('step_client:version', '0.15.13') }}/bin/step
    - if_missing: /usr/local/bin/step
    - user: salt
    - group: salt
#Bootstrap CA:
#  cmd.run:
#    - name: /usr/local/bin/step ca bootstrap --ca-url={{ salt['pillar.get']('step_client:ca-url') }} --fingerprint={{ salt['pillar.get']('step_client:fingerprint') }} --install
