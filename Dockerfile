FROM node:20

WORKDIR /app

# 安装依赖
RUN apt-get update && apt-get install -y \
    build-essential \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# 安装 wrangler
RUN npm install -g wrangler

# 复制项目文件
COPY _worker.js ./
COPY package.json ./
# COPY wrangler.toml ./

# 安装项目依赖
RUN npm install

# 暴露端口
EXPOSE 3000

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# 启动命令
CMD ["wrangler", "dev", "--local", "--port", "3000", "--ip", "0.0.0.0"] 



