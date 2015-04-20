class erlang::repository {

  case $osfamily {
    'RedHat': { contain erlang::repository::yum      }
    'Debian': { contain erlang::repository::apt      }
    default:  { fail "Not supported OS: ${osfamily}" }
  }

}
