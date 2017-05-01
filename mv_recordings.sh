#!/bin/bash
SRCDIR=/var/spool/asterisk/monitor
DSTDIR=/mnt/recordingsbackup/
DAYS=90

if [ -d "${DSTDIR}" ]; then

        cd ${SRCDIR}

        if [ $(pwd) = ${SRCDIR} ]; then
                find . -mtime +${DAYS} -exec rsync -vR --remove-source-files {} ${DSTDIR} \;
        else
                echo "not in ${DSTDIR}"
        fi
else
        echo "${DSTDIR} is not mounted"
        exit
fi


