#!/usr/bin/env bash

# Source the environment files with the AWS access keys
if test -f vars/aws.env
then
  . vars/aws.env
fi

: ${AWS_ACCESS_KEY_ID?"Need to set AWS_ACCESS_KEY_ID"}
: ${AWS_SECRET_ACCESS_KEY?"Need to set AWS_SECRET_ACCESS_KEY"}

export ANSIBLE_HOST_KEY_CHECKING=False

time ansible-playbook devsecops-playbook.yml "$@"
