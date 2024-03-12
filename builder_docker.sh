readonly tag=v0.25.0-24031202
readonly imageName=yz/kubo
docker build -t ${imageName}:${tag} .
docker tag ${imageName}:${tag} docker.isecsp.com/eos-store/${imageName}:${tag}
docker push docker.isecsp.com/eos-store/${imageName}:${tag}
