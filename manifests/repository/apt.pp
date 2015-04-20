class erlang::repository::apt {
  include ::apt

  $apt_url = $operatingsystem ? {
    'Ubuntu' => 'http://packages.erlang-solutions.com/ubuntu',
    default  => 'http://packages.erlang-solutions.com/debian',
  }

  apt::source { 'erlang-solutions':
    comment     => 'Erlang solutions official repository',
    location    => $apt_url,
    repos       => 'contrib',
    include_src => false,
    key         => '434975BD900CCBE4F7EE1B1ED208507CA14F4FCA',
    key_source  => 'http://packages.erlang-solutions.com/debian/erlang_solutions.asc',
  }
}
