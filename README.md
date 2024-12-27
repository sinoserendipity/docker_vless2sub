# WorkerVless2sub Docker 部署指南

这是 [WorkerVless2sub](https://github.com/cmliu/WorkerVless2sub) 项目的 Docker 部署版本。

## 快速开始

### 1. 准备工作

首先克隆项目并进入目录：

bash
git clone https://github.com/cmliu/WorkerVless2sub
cd WorkerVless2sub

### 2. 配置文件

创建或修改 `wrangler.toml` 文件，配置您的参数：

```
toml
name = "worker-vless2sub"
main = "worker.js"
compatibility_date = "2023-12-01"
[vars]
TOKEN = "你的TOKEN"
HOST = "你的域名"
UUID = "你的UUID"
PATH = "你的路径"
SUBAPI = "你的SUBAPI"
SUBCONFIG = "你的SUBCONFIG"
ADD = "你的ADD"
ADDAPI = "你的ADDAPI"
IMG = "你的IMG"
```
