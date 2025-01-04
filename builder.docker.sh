readonly tag=v0.32.1-24123001
readonly imageName=yz/kubo
docker build -t ${imageName}:${tag} .
docker tag ${imageName}:${tag} docker.isecsp.com/eos-store/${imageName}:${tag}
docker push docker.isecsp.com/eos-store/${imageName}:${tag}

docker builder prune --filter 'until=240h'