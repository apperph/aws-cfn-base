#!/bin/bash
set -eauo pipefail
echo -e "\n==> Getting current AWS CLI profile, please wait...\n"
aws sts get-caller-identity
echo -e "\n+----------------------------------------------------------+"
echo -e "| WARNING: If you proceed w/ YES, the 'script' will deploy |" 
echo -e "| the SSM ParameterStore on this profile's AWS account. If |"
echo -e "| you want to change the AWS CLI profile, please select NO |"
echo -e "+----------------------------------------------------------+"

echo -e "\nIs the profile correct? Yes[Y|y] or No[N|n]"
read REPLY
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  echo -e "\n==> Recommendations:"
  echo -e "\n* Run \"export AWS_DEFAULT_PROFILE=<profile-name>\" to replace default aws cli profile.\n"
  echo "(e.g.) export AWS_DEFAULT_PROFILE=aws-as1-johndoe"
  exit 1
else
  echo -n "Enter AWS Region for SSM ParmeterStore (e.g. us-east-1) > "
  read AWS_REGION

  echo -n "Enter AWS SSM ParameterStore KeyName[format: /env/proj/resource/keyname] (e.g. /staging/myproj/rds/sample-keyname) > "
  read KEY_NAME

  echo -n "Enter AWS SSM ParameterStore KeyValue (e.g. sample-value) > "
  read KEY_VALUE

  echo -e "\n⸫ Creating SSM ParameterStore, please wait...\n"

  AWS_REGION="${AWS_REGION:-us-east-1}"
  aws ssm --region $AWS_REGION put-parameter --name $KEY_NAME --type String --value $KEY_VALUE

  echo -e "\n✓ SSM ParameterStore created.\n"
fi