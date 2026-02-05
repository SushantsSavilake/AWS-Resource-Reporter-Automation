#!/bin/bash
# Enable debug mode
set -x 

# List S3, EC2, Lambda, and IAM
aws s3 ls
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
aws lambda list-functions
aws iam list-users
