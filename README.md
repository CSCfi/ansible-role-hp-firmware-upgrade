[![Build Status](https://travis-ci.org/CSCfi/ansible-role-hp-firmware-upgrade.svg?branch=master)](https://travis-ci.org/CSCfi/ansible-role-hp-firmware-upgrade)

ansible-role-hp-firmware-upgrade
=========

Ansible role to upgrade HP system firmwares.

For HPE Gen10 firmwares, you will need create a list of host or group variables for the
firmware packages you wish upgrade. Compared to gen8 and gen9 upgrade tasks, now it is administrator responsibity to find suitable firmwares to the maintained servers. 

At [HPE Support Center](https://support.hpe.com/connect/s/?language=en_US) you can search for latest available firmwares to your server model and by running 
```
dnf search <packagetoupgrade.rpm>
```

you will find latest available version in your configured repositories (assuming you have configured HP repositories).


Example firmware_list variable for a HPE Apollo 4200 server. It may be advisable to keep listed firmwares commented unless you are really going to update them.

```
firmware_list:
#  - { upgrade_target: 'ILO 5', hp_repository: fwpp, firmware: firmware-ilo5, extra: "", upgrade: false, local_installation: false, local_file: "", reboot: false }
  - { upgrade_target: 'BIOS', hp_repository: fwpp, firmware: firmware-system-u39, extra: "", upgrade: true, local_installation: false, local_file: "", reboot: true }
#  - { upgrade_target: 'HPE Smart Array P816i-a SR Gen10', hp_repository: fwpp, firmware: firmware-smartarray-f7c07bdbbd, extra: "", upgrade: false, local_installation: false, local_file: "", reboot: true }
#  - { upgrade_target: 'HPE 14TB 12G SAS HDD', hp_repository: fwpp, firmware: firmware-hdd-cf0b6cabe1, extra: "", upgrade: false, local_installation: false, local_file: "", reboot: false }
#  - { upgrade_target: 'SSD MR00480GXBGH Drive', hp_repository: fwpp , firmware: firmware-hdd-8f9bf23306, extra: "", upgrade: false, local_installation: false, local_file: "", reboot: faĺse }
#  - { upgrade_target: 'NVMe', hp_repository: fwpp, firmware: 'firmware-hdd-MPK76H5Q', extra: "", upgrade: false, local_installation: false, local_file: "", reboot: false }
#  - { upgrade_target: 'NVMe backplane', hp_repository: spp , firmware: firmware-nvmebackplane-gen10, extra: "", upgrade: false, local_installation: false, local_file: "", reboot: false }
#  - { upgrade_target: 'HPE Ethernet 1Gb 2-port 332i Adapter - NIC', hp_repository: spp, firmware: firmware-nic-broadcom, extra: "", upgrade: false, local_installation: false, local_file: "", reboot: false }
#  - { upgrade_target: 'HPE Eth 10/25Gb 2p 631SFP28 Adapter -NIC', hp_repository: spp, firmware: firmware-nic-bcm-nxe, extra: kmod-bnxt_en, upgrade: false, local_installation: false, local_file: "", reboot: false }
#  - { upgrade_target: 'HPE Innovation Engine', hp_repository: spp, firmware: firmware-iegen10, extra: "", upgrade: false, local_installation: false, local_file: "", reboot: false }
#  - { upgrade_target: 'Power Management Controller', hp_repository: spp, firmware: firmware-powerpic-gen10, extra: "", upgrade: false, local_installation: false, local_file: "", reboot: false }
  - { upgrade_target: 'Server Platform Services (SPS)', hp_repository: fwpp, firmware: firmware-spsgen10, extra: "", upgrade: true, local_installation: false, local_file: "", reboot: false }
```

For Gen8 and Gen9 HP Servers, list of components upgraded by this role are

* iLO (4 or higher)
* System ROM
* Power Management Controller
* Smart Array disk controller
* Disk Drive
* Disc Backplane Expander
* Intel Network Adapter
* Mellanox Infiniband-ethernet Adapter (VPI)
* Qlogic Network Adapter (nx2)

Requirements
------------

* The machine where firmware upgrade is taking place:
    * Yum must be configured to access [Firmware Upgrade for Proliant repository](https://downloads.linux.hpe.com/SDR/project/fwpp/)
    * It also works with [SPP](https://downloads.linux.hpe.com/SDR/project/spp/)
    * If you maintain a yum mirror which retains old RPMs ( == you have hp-firmware-hdd and firmware-hdd RPMs then this role currently runs more firmware "upgrades" than necessary. See #19 for more details. Contributions are welcome.
* Supporting following HP Proliant generations
    * Gen8
    * Gen9
    * Gen10
    * If you have tested this role on other generations please let us know via an issue or PR

Role Variables
--------------
By default this role upgrades firmwares for all the devices mentioned above.
You can customize your selection by editing 
```defaults/main.yml```

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
 - https://github.com/khappone
 - https://github.com/FLiPp3r90 Filip Krahl
 - https://github.com/Jukepoika Jukka Tuunanen
