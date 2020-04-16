#!/bin/bash
# Author: Nathanael Liechti
# Description: Simple DynDNS Update Script for Infomaniak
# Warning! This script contains some sensitive Data!
# Sources:
# - https://tinklr.net/raspberrypi/2017/03/12/setup-dynamic-dns.html
# - https://tecadmin.net/tutorial/bash/examples/concatenate-string-variables/
# - https://askubuntu.com/questions/95910/command-for-determining-my-public-ip#95911

########## DynDNS Variables ###########
dyndns_domain='sugus.techpi.ch'
dyndns_user='techpi'
dyndns_pw='sml12345'
dyndns_public_ip=$(curl https://ipinfo.io/ip)
dyndns_post_url="https://${dyndns_user}:${dyndns_pw}@infomaniak.com/nic/update?hostname=${dyndns_domain}&myip=${dyndns_public_ip}"
#######################################

######### Update Curl #################
echo $dyndns_post_url

echo url=$dyndns_post_url |curl -v --tlsv1.2 -k -K -
