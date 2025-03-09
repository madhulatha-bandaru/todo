# Use the official Nginx base image
FROM nginx:latest

# Remove the default Nginx config file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/

# Copy all website files into the Nginx web root directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
