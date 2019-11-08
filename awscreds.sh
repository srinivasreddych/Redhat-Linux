#!/bin/bash
credentials=$(curl http://169.254.170.2$AWS_CONTAINER_CREDENTIALS_RELATIVE_URI)
export AWS_ACCESS_KEY_ID=$(echo $credentials | jq '.AccessKeyId' | sed -e 's/^"//' -e 's/"$//')
export AWS_SECRET_ACCESS_KEY=$(echo $credentials | jq '.SecretAccessKey' | sed -e 's/^"//' -e 's/"$//')
export AWS_SESSION_TOKEN=$(echo $credentials | jq '.Token'| sed -e 's/^"//' -e 's/"$//')
export AWS_SECURITY_TOKEN=$(echo $credentials | jq '.Token'| sed -e 's/^"//' -e 's/"$//')
