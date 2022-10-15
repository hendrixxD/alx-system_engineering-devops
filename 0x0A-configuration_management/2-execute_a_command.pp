# manifest that kills a process killmenow

exec { 'kill process':
  command => '/bin/pkill killmenow',
}
