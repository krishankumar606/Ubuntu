#!/bin/bash


aws ec2 describe-instances --filter "Name=tag:Name Name,Values=Ubuntu" --output text --query 'Reservations[*].Instances[*].InstanceId' | paste -d " "  -s > /tmp/test1.txt

for i in `cat /tmp/test1.txt`


do
aws ec2 discribe-instances --instance-ids "$i"

done

