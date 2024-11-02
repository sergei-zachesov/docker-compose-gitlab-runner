  docker exec -it gitlab-runner \
  gitlab-runner register \
    --non-interactive \
    --url <Runner registration URL> \
    --registration-token <Registration token> \
    --name <Registration runner name> \
    --locked=false \
    --executor docker \
    --docker-image docker:stable \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock"
