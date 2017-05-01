# Index of Tools

rm_callrecording - remove call recordings from a system that have not be used in X number of days.  By default it looks for recordings in /var/spool/asterisk/monitor.  But, this value can be changed by changing the DEFAULT_RECORDING_DIR field 

mv_recordings - move call recordings from one file directory to another directory that was created X number of days ago.  Default number of days is 90 days.You can change the value by editting the file and changing the DAYS value. We used rsync to move the files over and remove the source files    

logroute - contains a script to install the configuration to rotate asterisk log files.
