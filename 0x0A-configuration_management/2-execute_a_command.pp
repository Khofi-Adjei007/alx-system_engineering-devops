# Kill a process named "killmenow"

# Define an 'exec' resource named 'pkill'
exec { 'pkill':
  # Specify the command to execute using the 'shell' provider
  command  => 'pkill killmenow',
  provider => 'shell',
}
