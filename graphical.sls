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
      - ssh-askpass

      - i3

      - wicd
      - gnome-terminal
      - virt-manager

      - password-gorilla

      - scrot
      - mplayer
      - pianobar
      - eog

      - glipper
      - gmrun
      - xclip

      - vuze
      - deluge

      - iceweasel
      - chromium
      - pidgin

      - ibus-anthy
      - xfonts-intl-japanese
      - xfonts-intl-japanese-big

      - claws-mail
      - claws-mail-extra-plugins
      - claws-mail-pgpmime
      - claws-mail-bogofilter
      - flashplugin-nonfree

{% for path in configs %}
{{ path }}:
  file.managed:
    - source: salt://root/{{ path }}
{%   if path.startswith('/usr/bin/') %}
    - mode: 755
{%   endif %}
{% endfor %}
