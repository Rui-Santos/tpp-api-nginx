# transitland-nginx

These containers sit at the front of https://transit.land

## To build and deploy

1. Set up your `.aws/credentials` file.
2. Use environment variable to define ECS cluster (or put in an `.envrc` file and use [direnv](https://direnv.net/)):
  ```bash
  export TRANSITLAND_AWS_REGION=us-east-1
  export TRANSITLAND_AWS_PROFILE=xxx
  export TRANSITLAND_AWS_ECR=xxx
  export TRANSITLAND_AWS_CLUSTER=xx
  ```
3. Install Python dependencies:
  ```bash
  ./setup.sh
  ```
4. Build and push a container image (of current local state of repository code):
  ```bash
  ./build-push.sh
  ```
5. Deploy the latest container image to cluster:
  ```bash
  ./deploy.sh
  ```