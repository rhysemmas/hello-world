docker ps -a | awk '{ print $1,$2 }' | grep hello-world | awk '{print $1 }' | xargs -I {} sh -c 'docker kill {}; docker rm {};' && docker image prune -f
