Murano networking SFC plugin for Fuel
=======================

Murano networking SFC
--------------

This plugin extends MOS with Murano networking SFC support.

Requirements
------------

| Requirement                      | Version |
|:---------------------------------|:--------|
| Mirantis OpenStack compatibility | 9.0     |

It is required to install fuel-plugin-networking-sfc. Will not work otherwise.

Installation Guide
==================

Murano networking SFC plugin installation
---------------------------

To install Murano networking SFC plugin, follow these steps:

1. Build a plugin `fpb --build dir`

2. Copy the plugin on already installed Fuel Master node; ssh can be used for
    that. If you do not have the Fuel Master node yet, see
    [Quick Start Guide](https://software.mirantis.com/quick-start/) :

        # scp murano-networking-sfc-<version>.noarch.rpm root@<Fuel_Master_ip>:/tmp

3. Install the plugin:

        # cd /tmp
        # fuel plugins --install murano-networking-sfc-<version>.noarch.rpm

4. Check if the plugin was installed successfully:

        # [root@nailgun ~]# fuel plugins
        id | name                  | version | package_version | releases
        ---|-----------------------|---------|-----------------|--------------------
        1  | murano-networking-sfc | 1.0.0   | 4.0.0           | ubuntu (mitaka-9.0)

Murano networking SFC plugin configuration
----------------------------

1. Create an environment.
2. Enable the plugin on the Settings tab of the Fuel web UI.
3. Deploy the environment.

Contributors
------------

 * Damian Szeluga <dszeluga@mirantis.com> (developer)
 * Maciej Relewicz <mrelewicz@mirantis.com> (developer)
 * Bartosz Kupidura <bkupidura@mirantis.com> (developer)
