{% set files = [
  "/etc/apt/sources.list.d/debian.list",
  "/etc/apt/sources.list.d/salt.list",
  "/etc/apt/sources.list.d/dropbox.list",
  "/etc/apt/sources.list.d/google-talkplugin.list",
  "/etc/apt/sources.list.d/quodlibet.list",
] %}

system-packages:
  pkg.installed:
    - names:
      - task-laptop
      - task-english
      - task-ssh-server

      - moreutils

      - aptitude
      - apt-file

      - firmware-iwlwifi

      - lvm2

      - iptables
      - popularity-contest
      - python-reportbug
      - apt-listchanges
      - lsof
      - manpages
      - debian-faq
      - doc-debian
      - discover

      - blueman
      - bluetooth

      - paprefs

      - dnsmasq
      - libvirt-bin

      - qemu-kvm

      - tiger

      - libpam-fprintd

{% for path in files %}
{{ path }}:
  file.managed:
    - source: salt://root/{{ path }}
{% endfor %}
