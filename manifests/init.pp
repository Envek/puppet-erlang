# Class: erlang
#
# This module manages erlang installing it from official repos.
#
# Parameters: package, version
#
#
# Requires: see metadata.json
#
# Sample Usage: include erlang
#
#
class erlang (
  $version = 'installed', # Version to install, e.g. 'latest'
  $package = 'erlang',    # Package to install: e.g. 'erlang-hipe'
) {

  contain erlang::repository
  contain erlang::install

  Class['erlang::repository'] -> Class['erlang::install']

}
