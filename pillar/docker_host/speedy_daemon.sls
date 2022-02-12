---
docker:
  pkg:
    docker:
      daemon_config:
        {
          "data-root": "/fastdata/docker-daemon",
          "storage-driver": "zfs",
          "dns": ["192.168.202.31"],
        }
