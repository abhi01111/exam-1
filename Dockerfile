# Use the official nginx base image
FROM nginx:alpine

# Remove default Nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom index.html into the container
COPY index.html /usr/share/nginx/html/

# Expose port 80 (Nginx default)
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

