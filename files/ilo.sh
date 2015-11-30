#!/usr/bin/expect
set timeout -1
set commandi [lindex $argv 1]
spawn  "$commandi"
expect "Continue (y/N)"
send "y\r"
expect eof
