#!/bin/bash

# Start SSH process
/usr/sbin/sshd -D &
  
# Start FTP process
/usr/local/sbin/vsftpd &

  
# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?
