# WorkerVless2sub Docker 部署指南

```
docker build -t vless2sub .
```

```
version: '3'

services:
  worker-vless2sub:
    build: .
    ports:
      - "3000:3000"
    environment:
      - TOKEN=auto
      - HOST=example.com
      - UUID=your-uuid
      - PATH=/?ed=2048
    volumes:
      # - ./_worker.js:/app/_worker.js
      - ./wrangler.toml:/app/wrangler.toml
```
可以在 wrangler.toml 文件中添加内置节点参数

原项目cm大佬 https://github.com/cmliu/WorkerVless2sub


