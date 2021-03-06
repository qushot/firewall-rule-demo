#!/bin/sh

# 検証2で使用

# Project set for Cloud SDK
PROJECT_ID=YOUR_PROJECT_ID
gcloud config set project $PROJECT_ID

# default update
gcloud beta app firewall-rules update default \
--action=deny

# instance-a allow
gcloud beta app firewall-rules update 1 \
--action=allow \
--source-range='35.187.194.104' \
--description='default -> deny, instance-a -> allow'