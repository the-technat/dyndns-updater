FROM alpine:latest
MAINTAINER Nathanael Liechti technat@technat.ch

###### Sources ######
#- https://stackoverflow.com/questions/37458287/how-to-run-a-cron-job-inside-a-docker-container
#- https://tinklr.net/raspberrypi/2017/03/12/setup-dynamic-dns.html
#####################

# Install dependencies
RUN apk update && apk add curl && apk add dcron && apk add bash

# create dir structure
RUN mkdir /dyndns
WORKDIR /dyndns

#copy files from builddir 
COPY dyndns-updater.sh dyndns-updater.sh
COPY dyndns-cron /etc/cron.d/dyndns-cron

#modify permissions
RUN chmod 0644 /etc/cron.d/dyndns-cron
RUN chmod 0744 /dyndns/dyndns-updater.sh

#crontab
RUN crontab /etc/cron.d/dyndns-cron

#set logfile
RUN touch /var/log/cron.log

# set entrypoint
CMD crond && tail -f /var/log/cron.log
