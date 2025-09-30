FROM node:18-alpine

# Install bash and bitwarden CLI
RUN apk add --no-cache bash \
    && npm install -g @bitwarden/cli \
    && rm -rf /root/.npm /tmp/*

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Run the script with bash
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
