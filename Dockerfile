FROM node:20-alpine
RUN npm install -g @bitwarden/cli
RUN apk add bash
RUN apk add wget

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Run the script with bash
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
