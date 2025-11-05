export PROJECT_ID=bruno-assistant
export BILLING_ACCOUNT=<OUR_BILLING_ACCOUNT_ID>

gcloud projects create $PROJECT_ID --name="Übersetzende Wolkenfreundin"
gcloud beta billing projects link $PROJECT_ID --billing-account=$BILLING_ACCOUNT
gcloud config set project $PROJECT_ID
