==================
Installation Guide
==================

Murano Networking SFC plugin installation
============================================

To install Murano Networking SFC plugin, follow these steps:

#. Install all needed dependencies::

     # yum install createrepo rpm rpm-build dpkg-devel git ruby-devel createrepo
     dpkg-devel dpkg-dev rpm rpm-build python-pip
     # pip install fuel-plugin-builder
     # gem install fpm

#. Download plugin source code from github::

     # git clone https://github.com/openstack/fuel-plugin-murano-networking-sfc
     # cd fuel-plugin-murano-networking-sfc

#. Build a plugin::

     # fpb --build ./

#. Copy the plugin to already installed Fuel Master node; ssh can be used for
   that. If you do not have the Fuel Master node yet, see `Fuel Installation
   Guide <http://docs.openstack.org/developer/fuel-docs/userdocs
   /fuel-install-guide.html>`_::

     # scp murano-networking-sfc-<version>.noarch.rpm root@<Fuel_Master_ip>:/tmp

#. Install the plugin::

     # cd /tmp
     # fuel plugins --install murano-networking-sfc-<version>.noarch.rpm

#. Check if the plugin was installed successfully::

     # fuel plugins
       id | name                  | version | package_version | releases
       ---+-----------------------+---------+-----------------+-----------------
       1  | murano-networking-sfc | 1.0.0   | 4.0.0           | ubuntu (mitaka
