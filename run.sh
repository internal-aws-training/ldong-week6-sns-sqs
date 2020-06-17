#!/usr/bin/env bash

set -euo pipefail

WORK_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")"  && pwd)"

# echo $WORK_PATH


STACKNAME="ldong-sns-sqs-stack"

aws cloudformation create-stack --stack-name $STACKNAME --template-body file://$WORK_PATH/aws/template.yaml