==================
Removal Guide
==================

Murano Networking SFC plugin removal
============================================

To uninstall Murano Networking SFC plugin, follow these steps:

#. Disable plugin in all environments using it.
#. Uninstall the plugin::

     # fuel plugins --remove murano-networking-sfc==1.0.0

#. Check if the plugin was uninstalled successfully::

     # fuel plugins --list
     id | name                      | version  | package_version
     ---|---------------------------|----------|----------------
