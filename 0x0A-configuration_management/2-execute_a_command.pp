# Kill a process if it exist

# if the process doesn't exist puppet exist

# If it doesn't exists, puppet should exit


exec {'kill `killmenow` process':
command => '/usr/bin/pkill -9 -f killmenow',
onlyif  => '/usr/bin/pgrep -f killmenow'
}
