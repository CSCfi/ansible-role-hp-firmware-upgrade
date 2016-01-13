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

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: ansible-role-hp-firmware-upgrade }

License
-------

MIT

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
