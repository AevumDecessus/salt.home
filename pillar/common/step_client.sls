step_client:
  ca-url: https://tinyca.home.0n5.us
  fingerprint: 23138bcd7244b5d3a7fd88c9d09ebe320fa303ac00c137e11b188f5e78c8f82b 
  kid: EA-2q4Yz1vLg5WAMm7ALFKSVVv5G3qa9u6MLBbkqu0U
  version: 0.15.13
  {% if grains['cpuarch'] == 'armv7l' %}
  arch: armv7
  hash: sha256=ac25f5308dc0ca5da971fd8c7433544bd6960dd3bd7e0eb8519631d0006eb51d
  {% elif grains['cpuarch'] == 'aarch64' %}
  arch: arm64
  hash: sha256=327f0ddd0a77b11c683f12b30eb2744ccfed0a78cda9a3940bedbad059daed03
  {% else %}
  arch: amd64
  hash: sha256=f1c20bea85b68692cbd18b2f6581617f4490dc529137f6c56cbc386bf545ca43
  {% endif %}
