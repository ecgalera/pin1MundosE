# Utiliza la imagen base de Bitbucket de Atlassian
FROM node:18

VOLUME  /home/${USER_DOCKERHUB}/jenkins_sandbox_home:/var/jenkins_home

# Agregar más volúmenes si es necesario
VOLUME  /var/run/docker.sock:/var/run/docker.sock

