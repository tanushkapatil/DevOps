# ---- Base image ----
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /usr/src/app

# Install dependencies first (better layer caching)
COPY package*.json ./
RUN npm install --omit=dev

# Copy application source
COPY server.js ./
COPY public ./public

# Runtime configuration
ENV PORT=3000 \
    APP_ENV=docker
EXPOSE 3000

# Run as the non-root "node" user
USER node

# Container health check
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget -qO- http://localhost:3000/api/health || exit 1

CMD ["npm", "start"]
