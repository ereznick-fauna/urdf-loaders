FROM node:18-alpine

WORKDIR /app

# Install a minimal static file server
RUN npm install -g http-server

# Copy example bundle and URDFs
COPY javascript/example/bundle /app
COPY urdf /app/urdf

# Expose port and serve
EXPOSE 8080
CMD ["http-server", "-p", "8080", "-c-1", "/app"]
