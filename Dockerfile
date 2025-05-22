# Use NGINX to serve static files
FROM nginx:alpine

# Copy your site into the nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
