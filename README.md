ansible-role-hp-firmware-upgrade
=========

Ansible role to upgrade HP system firmwares. List of components upgraded by this role are

* ILO
* System ROM
* Power Management Controller
* Smart Array disk controller
* Disk Drive
* Intel Network Adapter
* Mellanox Infiniband-ethernet Adapter (VPI)

Requirements
------------

* The machine were ansible runs needs to have ansible 2.0
* The machine where firmware upgrade is taking place should have the following
    * Package: hp-conrep
    * Package: hpssacli for RHEL7 hosts or hpacucli for RHEL6 hosts
    * Package: hp-scripting-tools

Role Variables
--------------
By default this role upgrades firmwares for all the devices mentioned above.
You can customize your selection by editing defaults/main.yml

Dependencies
------------

The role ksingh7.ansible-role-hp-firmware-upgrade must be installed.

Example Playbook
----------------

* You can simply use this role like

    - hosts: servers
      roles:
         - { role: ksingh7.ansible-role-hp-firmware-upgrade }

License
-------

MIT

Author Information
------------------

This role was created by [Karan Singh](www.ksingh.co.in)
