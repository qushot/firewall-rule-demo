#!/bin/sh

# create instances
PROJECT_ID=YOUR_PROJECT_ID
ZONE=asia-northeast1-a
gcloud compute instances delete instance-a instance-b \
--project $PROJECT_ID \
--zone $ZONE