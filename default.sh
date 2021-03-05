# Source computer
cd /opt/ansible_wp
>/opt/file_inte/source_cmp/default/cksum_source
find . -type f -print | sort | while read filename
do
        md5sum "${filename}" >> /opt/file_inte/source_cmp/default/cksum_source
done
find . -type f -exec ls -alSh --time-style=+%D   {} \; > /opt/file_inte/source_cmp/default/source_ls.txt
