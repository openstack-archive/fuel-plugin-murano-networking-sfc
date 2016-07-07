#    Copyright 2016 Mirantis, Inc.
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

notice('MODULAR: murano-networking-sfc/murano-networking-sfc-controller.pp')

  $primary_controller = hiera('primary_controller')

  package {'python-murano-plugin-networking-sfc':
        ensure => installed,
  }

  if $primary_controller {

    file { "/var/cache/murano/meta/networkingscf.zip":
        mode => "0644",
        owner => 'murano',
        group => 'murano',
        source => '/etc/fuel/plugins/murano-networking-sfc-1.0/files/NetworkingSFC.zip',
    }

     murano::application { 'networkingscf' : }
  }
