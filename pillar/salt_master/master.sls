salt:
  master_remove_config: true
  master:
    fileserver_backend:
      - git
      - roots
    file_roots:
      base:
        - /srv/salt
    pillar_roots:
      base:
        - /srv/pillar
    default_top: base
    user: salt
    module_dirs: 
      - /srv/extmods
    verify_env: True
    color: True
    strip_colors: False
    file_ignore_regex:
      - '/\.svn($|/)'
      - '/\.git($|/)'
    file_ignore_glob:
      - '\*.md'
      - '\*.pyc'
      - '\*.rst'
      - '\*.swp'
      - 'CODEOWNERS'
      - 'FORMULA'
      - 'Gemfile'
      - 'Gemfile.lock'
      - 'LICENSE'
