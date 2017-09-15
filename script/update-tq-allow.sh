#!/bin/sh

# Project set for Cloud SDK
PROJECT_ID=YOUR_PROJECT_ID
gcloud config set project $PROJECT_ID

# taskqueue allow
gcloud beta app firewall-rules update 1 \
--action=allow \
--source-range='0.1.0.2' \
--description='default -> deny, taskqueue -> allow'