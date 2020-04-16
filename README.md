# dyndns-updater
The dyndns-updater is a simple docker containe for updating the dnydns domains of your infomaniak domains.

# Get-Started
To run that, simply clone it, change your domain settings in dyndns-updater.sh, build and then run!

```
git clone git@github.com:Bergregenwurm/dyndns-updater.git
nano dyndns-upadater.sh
docker build -t dyndns-updater .
docker run -d --rm --name dyndns-updater dyndns-updater
```

# dyndns-updater.sh
The dyndns-updatersh is a simple bash script that curls the dyndns update url of your domains. You can add a new domain to update like so:

1. Copy this Code block and paste it right bevor the line where is says "Update urls":
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")
2. Addjust your settings

3. Save and exit with ctrl+o and ctrl+x
