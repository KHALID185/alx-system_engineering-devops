#file to innstall flask


exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0 Werkzeug==2.0.2',
  require => Exec['check_python_installed'],
}

exec { 'check_python_installed':
  command => '/usr/bin/which python3',
}

