# Start with the official n8n Docker image as the base.
FROM n8nio/n8n:latest

# Switch to the root user to install software packages.
USER root

# Update the package list and install the official FFmpeg package.
# The "-y" flag automatically confirms the installation.
RUN apt-get update && apt-get install -y ffmpeg

# Switch back to the non-privileged "node" user for security reasons.
# This is the user that n8n runs as by default.
USER node

