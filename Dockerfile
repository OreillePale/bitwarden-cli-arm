# Use a lightweight Node.js + Alpine base
# let's pray this works
FROM node:18-alpine

# Install Bitwarden CLI globally
RUN npm install -g @bitwarden/cli \
    && rm -rf /root/.npm /tmp/*

COPY entrypoint.sh /

CMD ["/entrypoint.sh"]
