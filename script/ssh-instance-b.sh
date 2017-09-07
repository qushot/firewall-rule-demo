#!/bin/sh

PROJECT_ID=YOUR_PROJECT_ID
gcloud compute --project $PROJECT_ID ssh \
--zone "asia-northeast1-a" "instance-b"