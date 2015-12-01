#!/bin/expect
set timeout -1
set commandi [lindex $argv 1]
spawn  "$commandi"

expect {
	 "Continue (y/N)" {send "y\r";break }
	 "Do you want to upgrade the software to a newer version (y/n)" {
	 send "y\r"
	 expect "Do you want to reboot your system now?" {send "n\r"}
	 }
	}
