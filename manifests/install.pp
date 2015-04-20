class erlang::install {

  package { $erlang::package:
    ensure => $erlang::version,
  }

}
