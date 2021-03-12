packages:
  {% if grains['os_family'] == 'RedHat' %}
  vim: vim-enhanced
  {% elif grains['os_family'] == 'Debian' %}
  vim: vim
  {% else %}
  vim: vim
  {% endif %}
