FROM n8nio/n8n:latest

# 切换到 root 用户来安装软件包
USER root

# 更新软件包列表并使用 apk 安装 FFmpeg
RUN apk update && apk add --no-cache ffmpeg

# 安装完成后，切换回默认的非特权用户
USER node
