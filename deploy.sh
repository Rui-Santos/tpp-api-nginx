source virtualenv/bin/activate
eval $(aws --profile ${TRANSITLAND_AWS_PROFILE} ecr get-login --no-include-email --region ${TRANSITLAND_AWS_REGION})

# deploy
ecs deploy --profile ${TRANSITLAND_AWS_PROFILE} ${TRANSITLAND_AWS_CLUSTER} td-nginx