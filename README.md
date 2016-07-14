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

It is required to install fuel-plugin-networking-sfc plugin. Murano support should be enabled too.
Will not work otherwise.

Installation Guide
==================

Murano networking SFC plugin installation
---------------------------

To install Murano networking SFC plugin, follow these steps:

1. Install all needed dependencies

        # yum install createrepo rpm rpm-build dpkg-devel git ruby-devel createrepo dpkg-devel dpkg-dev rpm rpm-build python-pip
        # pip install fuel-plugin-builder
        # gem install fpm

2. Build a plugin `fpb --build dir`

3. Copy the plugin on already installed Fuel Master node; ssh can be used for
    that. If you do not have the Fuel Master node yet, see
    [Quick Start Guide](https://software.mirantis.com/quick-start/) :

        # scp murano-networking-sfc-<version>.noarch.rpm root@<Fuel_Master_ip>:/tmp

4. Install the plugin:

        # cd /tmp
        # fuel plugins --install murano-networking-sfc-<version>.noarch.rpm

5. Check if the plugin was installed successfully:

        # [root@nailgun ~]# fuel plugins
        id | name                  | version | package_version | releases
        ---|-----------------------|---------|-----------------|--------------------
        1  | murano-networking-sfc | 1.0.0   | 4.0.0           | ubuntu (mitaka-9.0)

Murano networking SFC plugin configuration
----------------------------

1. Create an environment with Murano support.
2. Install and enable networking-sfc plugin, available: https://github.com/openstack/fuel-plugin-networking-sfc. For Fuel 9.0 use 1.0 branch.
3. Enable the plugin on the Settings tab of the Fuel web UI.
4. Deploy the environment.

Known issues
------------

1. Murano should be in version which have ability to deploy vms with security groups disabled. It was introduced in fix: https://github.com/openstack/murano/commit/b12f7c9973b6154d4f4ed13c27dd6019581c6ee6. If you want to update Murano to latest version, you should on controllers do:

        # apt-get install git zip -y
        # git clone https://github.com/openstack/murano.git
        # cd murano
        # git checkout -t origin/stable/mitaka
        # python setup.py install
        # cd meta/io.murano
        # zip -r ~/Core.zip *
        # murano package-import ~/Core.zip --exists u
        # service murano-api restart
        # service murano-engine restart

Contributors
------------

 * Alexander Saprykin <asaprykin@mirantis.com> (developer)
 * Krzysztof Szukiełojć <kszukielojc@mirantis.com> (developer)
 * Sergey Slipushenko <sslipushenko@mirantis.com> (developer)
