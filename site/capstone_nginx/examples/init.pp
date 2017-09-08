if $::osfamily == 'Windows' {
  Package {
    provider => chocolatey,
  }
}

include capstone_nginx
