#!/bin/bash
#######################################
# Author - Sushant
# Date - 28/01/26
#
# Version - v01
#
# This script will show resources availble on the aws account
#######################################


#AWS S3
#AWS EC2 
#AWS Lambda
#AWS IAM Users

#run script in debug mode
set -x

#list s3 buckets
echo "print list of s3 buckets"
aws s3 ls 

#list EC2 Instances
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list Lambda
echo "print list of lambda functions"
aws lambda list-functions

#list IAM users
echo "print list of IAM users"
aws iam list-users 




































