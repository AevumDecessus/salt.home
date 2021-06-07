{% from "nfs_server/map.jinja" import nfs_server with context %}
Install NFS server:
  pkg.installed:
    - pkgs: {{ nfs_server.pkg|sequence|yaml}}
