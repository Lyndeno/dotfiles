# My DotFiles

These are my personal dotfiles for my laptop and desktop. These dotfiles are configured for a system running Arch Linux.

## Software Setup (WIP)

### Install this first

- [paru](https://aur.archlinux.org/packages/paru/)<sup>AUR</sup>
- [yadm](https://aur.archlinux.org/packages/yadm/)<sup>AUR</sup>

### General

- [libnotify](https://archlinux.org/packages/?name=libnotify)
- [piavpn-bin](https://aur.archlinux.org/packages/piavpn-bin/)<sup>AUR</sup>
- [gamemode](https://archlinux.org/packages/community/x86_64/gamemode/)
- [mangohud](https://aur.archlinux.org/packages/mangohud/)<sup>AUR</sup>
- [networkmanager](https://archlinux.org/packages/extra/x86_64/networkmanager/)
- [blueberry](https://archlinux.org/packages/community/any/blueberry/)
- [pipewire](https://archlinux.org/packages/extra/x86_64/pipewire/)
  - [pipewire-pulse](https://archlinux.org/packages/extra/x86_64/pipewire-pulse/)
- [visual-studio-code-bin](https://aur.archlinux.org/packages/visual-studio-code-bin)<sup>AUR</sup>
- [inetutils](https://archlinux.org/packages/core/x86_64/inetutils/) **IMPORTANT**: Needed for programs like Sway to choose the right config file based on the host. Might be able to remove and just cat ```/etc/hostname``` instead.
- [pacman-contrib](https://archlinux.org/packages/community/x86_64/pacman-contrib/)
- [discord](https://archlinux.org/packages/community/x86_64/discord/)
- [element-desktop](https://archlinux.org/packages/community/x86_64/element-desktop/)
- [gammastep](https://archlinux.org/packages/community/x86_64/gammastep/)
- [steam](https://archlinux.org/packages/multilib/x86_64/steam/)<sup>multilib</sup>
- [otf-cascadia-code]()
- [ttf-nerd-fonts-symbols]()

### Terminal

- [alacritty](https://archlinux.org/packages/community/x86_64/alacritty/)
- [fish](https://archlinux.org/packages/community/x86_64/fish/)
  - [starship](https://archlinux.org/packages/community/x86_64/starship/)
- [exa](https://archlinux.org/packages/community/x86_64/exa/)
- [bat](https://archlinux.org/packages/community/x86_64/bat/)
- [pueue](https://archlinux.org/packages/community/x86_64/pueue/)
- [bottom](https://aur.archlinux.org/packages/bottom/)<sup>AUR</sup>
- [jq]()
- [xdg-user-dirs]()
- [xdg-utils]()
- [brightnessctl]()

### VM Stuff

- [libvirt](https://archlinux.org/packages/community/x86_64/libvirt/)
- [iptables-nft]()
- [dns-masq]()
- [bridge-utils](https://archlinux.org/packages/extra/x86_64/bridge-utils/)
- [openbsd-netcat](https://archlinux.org/packages/community/x86_64/openbsd-netcat/)
- [edk2-ovmf](https://archlinux.org/packages/extra/any/edk2-ovmf/)

### Wayland Session

- [sway](https://archlinux.org/packages/community/x86_64/sway/)
- [mako](https://archlinux.org/packages/community/x86_64/mako/)
- [swaylock-effects-git](https://aur.archlinux.org/packages/swaylock-effects-git/)<sup>AUR</sup>
- [waybar](https://archlinux.org/packages/community/x86_64/waybar/)
- [wofi](https://archlinux.org/packages/community/x86_64/wofi/)
- [swayidle](https://archlinux.org/packages/community/x86_64/swayidle/)
- [xdg-desktop-portal-wlr](https://archlinux.org/packages/community/x86_64/xdg-desktop-portal-wlr/)
- [wl-clipboard](https://archlinux.org/packages/community/x86_64/wl-clipboard/)

### Xorg Session (If desired)

Will add bare minimum i3 stuff here as I figure it out
