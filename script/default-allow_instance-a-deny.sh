#!/bin/sh

# 検証1で使用

# Project set for Cloud SDK
PROJECT_ID=YOUR_PROJECT_ID
gcloud config set project $PROJECT_ID

# default update
gcloud beta app firewall-rules update default \
--action=allow

# instance-a deny
gcloud beta app firewall-rules create 1 \
--action=deny \
--source-range='35.187.194.104' \
--description='default -> allow, instance-a -> deny'