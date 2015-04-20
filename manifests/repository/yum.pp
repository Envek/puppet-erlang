class erlang::repository::yum {

  yumrepo { 'erlang-solutions':
    baseurl        => "http://packages.erlang-solutions.com/rpm/centos/\$releasever/\$basearch",
    failovermethod => 'priority',
    enabled        => '1',
    gpgcheck       => '1',
    gpgkey         => "http://packages.erlang-solutions.com/rpm/erlang_solutions.asc",
    descr          => "Erlang solutions official repository for RHEL and Cent OS - \$basearch",
  }

}
