PROJECT_ID=009-028-example-shell

gcloud projects create ${PROJECT_ID}


# Logout
gcloud auth revoke

# Login
gcloud auth login


# Check all services available

## List enabled
gcloud services list

## List available
gcloud services list --available



# Create a new Storage Bucket

gsutil mb -l asia gs://009-029-practice-shell-v2/

# Create new instance


gcloud compute instances create --machine-type=f1-micro  myvm --metadata=lab-logs-bucket=gs://009-029-practice-shell/,startup-script-url=https://raw.githubusercontent.com/ACloudGuru/gcp-cloud-engineer/master/compute-labs/worker-startup-script.sh --zone asia-southeast1-a --scopes=default,storage-rw
gcloud compute instances create --machine-type=f1-micro  myvm --metadata lab-logs-bucket=gs://009-029-practice-shell/ --metadata-from-file startup-script=/Users/ducnguyen/Workspace/gcp-practices/009-028/worker-startup-script.sh --zone asia-southeast1-a --scopes=default,storage-full --service-account=615396438928-compute@developer.gserviceaccount.com


