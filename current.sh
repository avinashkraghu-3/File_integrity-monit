# Destination computer
>/opt/file_inte/source_cmp/current_status/cksum_destination
cd /opt/ansible_wp
find . -type f -print | sort | while read filename
do
        md5sum "${filename}" >> /opt/file_inte/source_cmp/current_status/cksum_destination
done
find . -type f -exec ls -alSh --time-style=+%D   {} \; > /opt/file_inte/source_cmp/current_status/destination_ls.txt
