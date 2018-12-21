[![Build Status](https://travis-ci.org/CSCfi/ansible-role-hp-firmware-upgrade.svg?branch=master)](https://travis-ci.org/CSCfi/ansible-role-hp-firmware-upgrade)

ansible-role-hp-firmware-upgrade
=========

Ansible role to upgrade HP system firmwares. List of components upgraded by this role are

* iLO (4 or higher)
* System ROM
* Power Management Controller
* Smart Array disk controller
* Disk Drive
* Intel Network Adapter
* Mellanox Infiniband-ethernet Adapter (VPI)
* Qlogic Network Adapter (nx2)

Requirements
------------

* The machine where firmware upgrade is taking place:
    * Yum must be configured to access [Firmware Upgrade for Proliant repository] (https://downloads.linux.hpe.com/SDR/project/fwpp/)
* Supporting following HP Proliant generations
    * Gen8
    * Gen9

Role Variables
--------------
By default this role upgrades firmwares for all the devices mentioned above.
You can customize your selection by editing ```defaults/main.yml```

Installation
------------

```$ ansible-galaxy install CSCfi.hp-firmware-upgrade ```

Dependencies
------------

The role ```CSCfi.hp-firmware-upgrade``` must be installed.

Example Playbook
----------------

* You can simply use this role like
```
- hosts: servers
  roles:
     - { role: CSCfi.hp-firmware-upgrade }
```
License
-------

MIT

Author Information
------------------

This role was created by [Karan Singh](http://www.ksingh.co.in)
Contributions:
 - https://github.com/martbhell/ Johan Guldmyr
 - https://github.com/Kallio/
