source virtualenv/bin/activate
eval $(aws --profile ${TRANSITLAND_AWS_PROFILE} ecr get-login --no-include-email --region ${TRANSITLAND_AWS_REGION})

# Build and push image
docker build -t transitland-nginx .
docker tag transitland-nginx:latest ${TRANSITLAND_AWS_ECR}/transitland-nginx:latest
docker push ${TRANSITLAND_AWS_ECR}/transitland-nginx:latest

# ecs deploy --profile ${TRANSITLAND_AWS_PROFILE} ${TRANSITLAND_CLUSTER} td-nginx
