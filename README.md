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
name = "worker-vless2sub"
main = "_worker.js"
compatibility_date = "2023-12-01"

[vars]
TOKEN = "your token here"
HOST = "you host here"
UUID = "your uuid here"
PATH = "your path here"
SUBAPI ="subapi.fxxk.dedyn.io"
SUBCONFIG = "https://raw.githubusercontent.com/cmliu/ACL4SSR/main/Clash/config/ACL4SSR_Online_Full_MultiMode.ini"
ADD = "icook.tw:2053#官方优选域名"
ADDAPI = "https://addressesapi.090227.xyz/ct"
IMG = "https://raw.cmliussss.com/keqing1080p.jpg"
```
