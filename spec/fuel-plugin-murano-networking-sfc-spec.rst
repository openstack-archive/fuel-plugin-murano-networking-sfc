..
 This work is licensed under the Apache License, Version 2.0.

 http://www.apache.org/licenses/LICENSE-2.0

=============================
Murano networking sfc plugin
=============================

Murano networking sfc plugin for Fuel extends Mirantis OpenStack
functionality by installing murano networking sfc support.

Problem description
===================

Currently, Murano has no support for networking sfc.
Murano networking sfc plugin aims to provide support for it.

Proposed change
===============

Implement a Fuel plugin that will install murano networking sfc
support.

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

Murano networking SFC plugin has no direct performance impact on OpenStack,
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

Plugin delivers murano networking sfc support to Fuel. Plugin has one task:

* The task install package needed for murano networking sfc support. Import
  library needed by murano to support networking sfc.

Murano networking sfc is installed on all environments which has enabled plugin.
Murano networking sfc plugin requires fuel plugin sfc installed.

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
* Test the plugin by deploying environments with all Fuel deployment modes.

Documentation Impact
====================

* Deployment Guide (how to install the plugin, how to configure and deploy an
  OpenStack environment with the plugin).
* User Guide (which features the plugin provides, how to use them in the
  deployed OpenStack environment).
* Test Plan.
* Test Report.

References
==========

* `Murano wiki page <https://wiki.openstack.org/wiki/Murano>`_
* `Official fuel plugin networking sfc repository
  <https://github.com/openstack/fuel-plugin-networking-sfc>`_
* `Official networking sfc repository <https://github.com/openstack/networking-sfc>`_
