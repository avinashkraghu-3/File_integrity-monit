#!/bin/bash
bash /opt/file_inte/source_cmp/current.sh
EMAIL=333.help.me.333@gmail.com

/bin/diff /opt/file_inte/source_cmp/default/cksum_source  /opt/file_inte/source_cmp/current_status/cksum_destination > /opt/file_inte/source_cmp/diff/cksum_diff

if [ $? -eq 1 ] ; then
	mail -s "`hostname -s` - Intrution Detected" -r changed Content $EMAIL < /opt/file_inte/source_cmp/diff/cksum_diff
fi
