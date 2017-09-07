#!/bin/sh

# beta activate
gcloud components install beta

# Cloud SDK update
gcloud components update

# Project set for Cloud SDK
PROJECT_ID=YOUR_PROJECT_ID
gcloud config set project $PROJECT_ID

# create
gcloud beta app firewall-rules create 3 \
--action=deny \
--source-range='2.2.2.0/24' \
--description='rule create test'

# list
gcloud beta app firewall-rules list

# describe
gcloud beta app firewall-rules describe 3

# test-ip
gcloud beta app firewall-rules test-ip 2.2.2.2

# update
gcloud beta app firewall-rules update 3 \
--action=allow \
--description='rule update test'

# delete
gcloud beta app firewall-rules delete 3