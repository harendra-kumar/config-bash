## Modular bash config

Allows you to:

* Drop independent config snippet files in
  ``.config/bash_profile.d`` or ``.config/bashrc.d``.
* Prefix file names with numerical digits to enforce the sourcing order.

This allows me to keep logically independent configs separate and use ``vcsh``
and ``mr`` to source correct configs based on the deployment target machine.

## Install using vcsh

Moves any existing ``.bash_profile`` and ``.bashrc`` to ``<file>.vcsh-backup.``
Backup manually to be doubly sure.

```
mkdir -p ~/.local/bin && cd ~/.local/bin
wget -qO- https://raw.githubusercontent.com/harendra-kumar/vcsh/harendra/vcsh > vcsh
chmod +x vcsh; export PATH=`pwd`:$PATH
./vcsh clone https://github.com/harendra-kumar/config-init
./vcsh clone https://github.com/harendra-kumar/config-bash
```
