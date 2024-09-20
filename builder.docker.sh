readonly tag=v0.30.0-24092001
readonly imageName=yz/kubo
docker build -t ${imageName}:${tag} .
docker tag ${imageName}:${tag} docker.isecsp.com/eos-store/${imageName}:${tag}
docker push docker.isecsp.com/eos-store/${imageName}:${tag}
