CONTAINER_NAME=cloudstore-proxy
IMAGE_NAME=khemtat/cloudstore-proxy

docker rm -f ${CONTAINER_NAME}

docker rmi -f ${IMAGE_NAME}

docker build -t ${IMAGE_NAME} .

docker run --name ${CONTAINER_NAME} --network cloudstore --restart always -itp 80:80 ${IMAGE_NAME}
