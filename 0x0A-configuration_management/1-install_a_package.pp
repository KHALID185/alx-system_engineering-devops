#file to innstall flask


exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  require => Exec['check_python_installed'],
}

exec { 'check_python_installed':
  command => '/usr/bin/which python3',
}

