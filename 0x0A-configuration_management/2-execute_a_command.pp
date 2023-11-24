# kill process killm

exec { 'kill_killmenow':
  command => 'pkill killmenow',
  returns => [0, 1],
 path    => ['/usr/bin'],
}

