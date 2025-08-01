# Use a lightweight web server image
FROM nginx:alpine

# Copy your website files into the nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
