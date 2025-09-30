FROM node:20-alpine
RUN npm install -g @bitwarden/cli

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Run the script with bash
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
