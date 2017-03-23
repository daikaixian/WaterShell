#!/bin/bash

# sysinfo_page - A script to produce an system information HTML file

##### Constants

TITLE="System Information for $HOSTNAME"
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"

##### Functions

system_info()
{
	# Temporary function stub
	echo "function system_info"
	return
}


show_uptime()
{
	echo "<h2>System uptime</h2>"
        echo "<pre>"
        uptime
        echo "</pre>"
}


drive_space()
{
	echo "<h2>Filesystem space</h2>"
    	echo "<pre>"
    	df
    	echo "</pre>"
}


home_space()
{
	 # Only the superuser can get this information

    	if [ "$(id -u)" = "0" ]; then
        	echo "<h2>Home directory space by user</h2>"
        	echo "<pre>"
        	echo "Bytes Directory"
            	du -s /home/* | sort -nr
        	echo "</pre>"
    	fi

}

##### Main

cat <<- _EOF_
  <html>
  <head>
      <title>$TITLE</title>
  </head>

  <body>
      <h1>$TITLE</h1>
      <p>$TIME_STAMP</p>
      $(system_info)
      $(show_uptime)
      $(drive_space)
      $(home_space)
  </body>
  </html>
_EOF_
       
