## Modular bash config

Allow you to:

* Drop independent files containing bash_profile or bashrc config in
  ``.config/bash_profile.d`` or ``.config/bashrc.d`` respectively.
* Prefix file names with numerical digits to enforce the sourcing order.

This allows me to keep logically independent configs separate and use ``vcsh``
and ``mr`` to source correct configs based on the deployment target machine.
