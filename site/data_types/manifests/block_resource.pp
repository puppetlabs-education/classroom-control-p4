class data_types::block_resource {
  
  File {
      mode   => '644',
      ensure => file,
  }
  file { ['/etc/httpd','/etc/httpd/conf.d']:
    ensure => directory,
  }
  file {
    "/etc/httpd/conf.d/main_website.conf":
      content => template("data_types/main_website.conf.erb"),
      ;
    "/etc/httpd/conf.d/reports.conf":
      content => template("data_types/reports.conf.erb"),
      ;
    "/etc/httpd/conf.d/admin_site.conf":
      content => template("data_types/admin_site.conf.erb"),
      ;
  }
}
