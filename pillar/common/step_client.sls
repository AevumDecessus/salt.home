step_client:
  ca-url: https://tinyca.home.0n5.us
  fingerprint: 23138bcd7244b5d3a7fd88c9d09ebe320fa303ac00c137e11b188f5e78c8f82b 
  version: 0.25.2
  {% if grains['cpuarch'] == 'armv7l' %}
  arch: armv7
  hash: sha256=4346f6651b0aaec2a1db355284aa13b49d74b223adcaddfd9a2df77882a45030
  {% elif grains['cpuarch'] == 'aarch64' %}
  arch: arm64
  hash: sha256=df9eb4ab74d9d266765b2bfb6ead10080959c2085ba595d9fc89bc98a0874107
  {% else %}
  arch: amd64
  hash: sha256=ef6b78243eede232484c977c12f6fdd90e719ece662b997fe56fcb5e8088cb67
  {% endif %}
