git_dwains_dashboard:
  git.latest:
    - name: https://github.com/dwainscheeren/dwains-lovelace-dashboard.git
    - target: /home/docker/homeassistant/dwains-dashbord
    - user: docker
    - require:
      - sls: docker_host.user
