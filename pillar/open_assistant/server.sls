home_assistant:
  server:
    enabled: true
    bind:
      address: 0.0.0.0
      port: 8123
    config:
      engine: git
      address: git@github.com:AevumDecessus/home-assistant.git
      branch: master
      identity: /srv/home_assistant/.ssh/id_ed25519
