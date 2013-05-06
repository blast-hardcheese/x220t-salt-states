{% set configs = [
  "/etc/X11/xorg.conf.d/20-thinkpad.conf",
  "/usr/share/gnome-session/sessions/i3.session",
  "/usr/share/xsessions/gnome-i3.desktop",
  "/usr/bin/gnome-session-i3",
] %}

graphical-packages:
  pkg.installed:
    - names:
      - xorg
      - gdm3
      - gnome-screensaver

      - wicd
      - gnome-terminal

      - password-gorilla

      - i3
      - scrot
      - mplayer
      - pianobar

      - vuze
      - deluge

      - chromium

{% for path in configs %}
{{ path }}:
  file.managed:
    - source: salt://root/{{ path }}
{%   if path.startswith('/usr/bin/') %}
    - mode: 755
{%   endif %}
{% endfor %}
