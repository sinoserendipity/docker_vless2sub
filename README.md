# WorkerVless2sub Docker 部署指南

```
docker build -t vless2sub .
```

```
docker run -d -p 3000:3000 -v -v $(pwd)/_worker.js:/app/_worker.js
```
