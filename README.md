# IISSI2-silence-tester
Simple and naive proyect to wake up all students projects

To execute a project simply run 
docker run -it --network="host" jagalindo/auto_silence:latest "git del proyecto"
GIT_REPO=<url del repo> GIT_USER=<user having access to the repo> GIT_PASS=<pass for that user> docker-compose up
