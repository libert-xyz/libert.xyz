set -e # Fail fast

DISTRIBUTION_ID=E2SGG1GEV95CJR
BUCKET_NAME=libert.xyz-cdn

# Set your domain here
YOUR_DOMAIN="libert.xyz"
REGION="us-east-1"
# Don't change these
BUCKET_NAME="${YOUR_DOMAIN}-cdn"
LOG_BUCKET_NAME="${BUCKET_NAME}-logs"


# Build a fresh copy
#hugo -v 


aws s3 sync --acl "public-read" --sse "AES256" public/ s3://$BUCKET_NAME --exclude 'post'


# Invalidate root page and page listings
aws cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths /index.html / /page/*
