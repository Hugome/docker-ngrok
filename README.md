
Run docker container :
```
docker run -d --name ngrokserver \
  --restart=always \
  -p 5688:5688 \
  -p 5687:5687 \
  -p 4443:4443 \
  hugome/docker-ngrok -httpAddr=:5688 -httpsAddr=:5687 -domain=ngrok.example.com
```
