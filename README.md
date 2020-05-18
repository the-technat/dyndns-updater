# dyndns-updater
The dyndns-updater is a simple docker containe for updating the dnydns domains of your infomaniak domains.

# Get-Started
To run that, simply clone it, change your domain settings in dyndns-updater.sh, build and then run!

```
git clone https://github.com/the-technat/dyndns-updater.git
nano dyndns-upadater.sh
docker build -t dyndns-updater .
docker run -d --rm --name dyndns-updater dyndns-updater
```

# dyndns-updater.sh
The dyndns-updatersh is a simple bash script that curls the dyndns update url of your domains. You can add a new domain to update like so:

1. Copy this Code block and paste it right bevor the line where is says "Update urls":
2. Addjust your settings
```
########## DynDNS Variables example.com ##################
#dyndns_domain='sub.example.com'
#dyndns_user='exampleuser'
#dyndns_pw='ThisPasswordIsVeryPublic!!!'
#dyndns_urls+=("https://${dyndns_user}:${dyndns_pw}@infomaniak.com/nic/update?hostname=${dyndns_domain}&myip=${dyndns_public_ip}")
###########################################################

################### Update urls  ##########################
```
3. Save and exit with ctrl+o and ctrl+x
