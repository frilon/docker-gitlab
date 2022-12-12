#!/bin/sh

# This feature was deprecated in GitLab 15.6 and is planned for removal in 16.0. 
# This change is a breaking change. GitLab plans to introduce a new 
# GitLab Runner token architecture, which introduces a new method for registering 
# runners and eliminates the legacy runner registration token.
# https://docs.gitlab.com/15.6/runner/register/

RUNNER_TOKEN=$(awk -F'=' '/RUNNER_TOKEN/ {print $2}' .env)

# Do not do any changes here unless you have changed names in the compose file
docker exec -it gitlab-runner \
    gitlab-runner register \
    --non-interactive \
    --registration-token "${RUNNER_TOKEN}" \
    --locked=false \
    --description docker-stable \
    --url "http://gitlab/" \
    --executor docker \
    --docker-image docker:stable \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock"
