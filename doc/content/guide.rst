==========
User Guide
==========

Environment configuration
=========================

#. Create an environment with vxlans support. For more information about
   environment creation, see `Fuel User Guide <http://docs.openstack.org
   /developer/fuel-docs/userdocs/fuel-user-guide/create-environment.html>`_.

#. Plugin reguire installed and enabled Networking SFC plugin for Fuel. Source
   code and documentation for this plugin, can be found here: `Networking SFC
   plugin for Fuel <https://github.com/openstack/fuel-plugin-networking-sfc>`_.

#. In *Environments* tab choose an environment for which you want to install
   Murano Networking SFC plugin.

#. Enable plugin by checking *Fuel plugin for Murano networking sfc support* on
   *Settings* tab in *Other* section.

   .. image:: images/enableplugin.png
      :width: 50%

#. Adjust other environment settings to match your needs  and deploy the
   environment. For more information, see
   `Configure your Environment <http://docs.openstack.org/developer/fuel-docs
   /userdocs/fuel-user-guide/configure-environment.html>`_.

#. Plugin reguires `patch <https://github.com/openstack/murano/commit
   /b12f7c9973b6154d4f4ed13c27dd6019581c6ee6>`_  which is not delivered in
   Murano in Fuel 9.0. So if you are using 9.0 you have to update Murano to the
   latest version after sucessfull deployment

   .. image:: images/success.png
      :width: 50%

   You need to do::

     On controller nodes::
       # apt-get install git zip -y
       # git clone https://github.com/openstack/murano.git
       # cd murano
       # git checkout -t origin/stable/mitaka
       # python setup.py install
     On primary controller also::
       # cd meta/io.murano
       # zip -r ~/Core.zip *
       # murano package-import ~/Core.zip --exists u
     Restart murano services after murano update on all controllers::
       # service murano-api restart
       # service murano-engine restart
