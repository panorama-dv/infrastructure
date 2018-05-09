ssh -oStrictHostKeyChecking=no ${SSH_USER}@${SSH_HOST} rm -rf swarm
rsync -r ./swarm/ ${SSH_USER}@${SSH_HOST}:swarm/
ssh -oStrictHostKeyChecking=no ${SSH_USER}@${SSH_HOST} cp .env ./swarm
ssh -oStrictHostKeyChecking=no ${SSH_USER}@${SSH_HOST} cp spec.yaml ./swarm
ssh -oStrictHostKeyChecking=no ${SSH_USER}@${SSH_HOST} docker stack deploy -c swarm/docker-compose.yml panoramadv
