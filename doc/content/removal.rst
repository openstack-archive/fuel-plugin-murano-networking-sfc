==================
Removal Guide
==================

Murano Networking SFC plugin removal
============================================

To uninstall Murano Networking SFC plugin, follow these steps:

1. Disable plugin in all environments when it is used.
2. Uninstall the plugin:

   # fuel plugins --remove murano-networking-sfc==1.0.0

3. Check if the plugin was uninstalled successfully:

   # fuel plugins
    id | name                      | version  | package_version
    ---|---------------------------|----------|----------------
