{% set files = [
  "/etc/grub.d/05_debian_theme"
] %}

update-grub2:
  cmd.wait:
    - watch:
{% for path in files %}
      - file: {{ path }}
{% endfor %}

{% for path in files %}
{{ path }}:
  file.managed:
    - source: salt://root/{{ path }}
{% endfor %}
