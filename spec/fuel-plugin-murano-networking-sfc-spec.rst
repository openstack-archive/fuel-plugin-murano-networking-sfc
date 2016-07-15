..
 This work is licensed under the Apache License, Version 2.0.

 http://www.apache.org/licenses/LICENSE-2.0

=============================
Murano Networking SFC plugin
=============================

Murano Networking SFC plugin for Fuel extends Mirantis OpenStack
functionality by installing Murano Networking SFC support.

Problem description
===================

Currently, Murano has no support for Networking SFC.
Murano Networking SFC plugin aims to provide support for it.

Proposed change
===============

Implement a Fuel plugin that will install Murano Networking SFC support.

Alternatives
------------

None

Data model impact
-----------------

None

REST API impact
---------------

None

Upgrade impact
--------------

None

Security impact
---------------

None

Notifications impact
--------------------

None

Other end user impact
---------------------

None

Performance Impact
------------------

Murano Networking SFC plugin has no direct performance impact on OpenStack,
but it consumes additional resources (CPU, memory, database) and this should
be considered and tested on a test environment before production use.

Other deployer impact
---------------------

None

Developer impact
----------------

None

Implementation
==============

Plugin delivers Murano Networking SFC support to Fuel. Plugin has one task:

* The task installs package needed for Murano Networking SFC support and imports
  required libraries needed by Murano to support Networking SFC.

Murano Networking SFC is installed on all environments with plugin enabled.
Murano Networking SFC plugin requires SFC Fuel plugin to be installed.

Assignee(s)
-----------

| Szymon Bańka <sbanka@mirantis.com> (PM)
| Alexander Saprykin <asaprykin@mirantis.com> (developer)
| Krzysztof Szukiełojć <kszukielojc@mirantis.com> (developer)
| Sergey Slipushenko <sslipushenko@mirantis.com> (developer)
| Maciej Relewicz <mrelewicz@mirantis.com> (developer)

Work Items
----------

* Implement code for Murano.
* Implement the Fuel plugin.
* Implement the Puppet manifest.
* Testing.
* Write the documentation.

Dependencies
============

* Fuel 9.0

Testing
=======

* Prepare a test plan.
* Test the plugin by deploying environments in every Fuel deployment nodes.

Documentation Impact
====================

* Deployment Guide (how to install the plugin, how to configure and deploy an
  OpenStack environment with the plugin).
* User Guide (what features the plugin provides, how to use them in the
  deployed OpenStack environment).
* Test Plan.
* Test Report.

References
==========

* `Murano wiki page <https://wiki.openstack.org/wiki/Murano>`_
* `Official fuel plugin networking sfc repository
  <https://github.com/openstack/fuel-plugin-networking-sfc>`_
* `Official networking sfc repository <https://github.com/openstack/networking-sfc>`_
