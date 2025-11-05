export REGION=us-central1
export BUCKET=bruno-assistant-kb
gsutil mb -p $PROJECT_ID -l $REGION -b on gs://$BUCKET/
gsutil mkdir gs://$BUCKET/de/
gsutil mkdir gs://$BUCKET/pt-BR/
gsutil mkdir gs://$BUCKET/artifacts/
