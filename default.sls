timezone: Europe/Helsinki
tmpfs_size: 1024M

ssh:
  port: 3022
  authorized_keys: salt://common/files/authorized_keys

oh-my-zsh:
  users:
    root:
      username: root
      group: root
      home: /root
  theme: agnoster
  disable-auto-update: true
  disable-update-prompt: true
  disable-untracked-files-dirty: true
  plugins: salt debian zsh-navigation-tools

audit:
  suid_files:
    - /usr/bin/passwd
    - /usr/bin/sudo
    - /usr/bin/chfn
    - /usr/bin/pkexec
    - /usr/bin/gpasswd
    - /usr/bin/fusermount
    - /usr/bin/newgrp
    - /usr/bin/umount
    - /usr/bin/su
    - /usr/bin/mount
    - /usr/bin/chsh
    - /usr/bin/at
    # - /usr/lib/eject/dmcrypt-get-device
    - /usr/lib/openssh/ssh-keysign
    - /usr/lib/policykit-1/polkit-agent-helper-1
    - /usr/lib/dbus-1.0/dbus-daemon-launch-helper