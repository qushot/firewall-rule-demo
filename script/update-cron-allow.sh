#!/bin/sh

# Project set for Cloud SDK
PROJECT_ID=YOUR_PROJECT_ID
gcloud config set project $PROJECT_ID

# cron allow
gcloud beta app firewall-rules create 1 \
--action=allow \
--source-range='0.1.0.1' \
--description='default -> deny, cron -> allow'