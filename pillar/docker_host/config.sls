---
docker:
  wanted:
    - docker
    - compose
  pkg:
    docker:
      daemon_config:
        {
          "data-root": "/fastdata/docker-daemon",
          "storage-driver": "zfs"
        }
