salt:
  group.present:
    - system: True

blast:
  user.present:
    - fullname: Devon Stewart
    - groups:
      - salt

      - sudo
      - audio
      - video
      - disk

      - plugdev
      - netdev
      - lpadmin

      - bluetooth
      - pulse
      - lpadmin

      - kvm
      - libvirt
      - libvirt-qemu
