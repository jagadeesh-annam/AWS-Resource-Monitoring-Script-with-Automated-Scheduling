#!/bin/bash


##Author:jagadeesh
#Date:8th-june
#
#version :v1
#This script will report aws resource usage
######################


#AWS s3
#AWS Ec2
#AWS lambda
#AWS IAM Users
#Define output log file

set -x

#list s3 buckets
echo "print the list  aws s3 buckets"
aws s3 ls

#list Ec2 Instances
echo "print the list of Ec2 instances"
aws ec2 describe-instances |jq '.Reservations[].Instances[].InstanceId'

#list lambda
echo "print the list of aws lambda"
aws lambda list-functions
 #list IAM users
 echo "print the list of IAM"
aws iam list-users
