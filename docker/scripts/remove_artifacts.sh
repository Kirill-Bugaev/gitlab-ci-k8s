#!/bin/bash

GITLAB_INSTANCE="http://10.96.247.231:8181"
ACCESS_TOKEN="uiQc-QGnpXk1pG5-7QEr"

project_id=$1
job_id=$2

echo_usage(){
	echo "usage: $0 PROJECT_ID JOB_ID" >&2
}

re='^[0-9]+$'
wrong_args=0
if ! [[ $project_id =~ $re ]]; then
	echo "error: project id specified wrong" >&2
	wrong_args=1
fi
if ! [[ $job_id =~ $re ]]; then
	echo "error: job id specified wrong" >&2
	wrong_args=1
fi
if [ $wrong_args == 1 ]; then
	echo_usage
	exit 1
fi

response=$(curl --request DELETE --header "PRIVATE-TOKEN: $ACCESS_TOKEN" \
		"$GITLAB_INSTANCE/api/v4/projects/$project_id/jobs/$job_id/artifacts" \
		--silent --write-out "%{http_code}")


case ${response:(-3)} in
  204)
        echo "job artifacts removed"
        exit 0
        ;;
  000)
        echo "curl error, exit code = $?"
        exit 1
        ;;
  *)
        echo "$response"
        exit 1
        ;;
esac
