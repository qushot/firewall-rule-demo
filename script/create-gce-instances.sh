#!/bin/sh

# create instances
PROJECT_ID=YOUR_PROJECT_ID
ZONE=asia-northeast1-a
MACHINE_TYPE=f1-micro
gcloud compute instances create instance-a instance-b \
--project $PROJECT_ID \
--zone $ZONE \
--machine-type $MACHINE_TYPE