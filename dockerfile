# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx files
RUN rm -rf ./*

# Copy the HTML file and images to the container
COPY index.html /usr/share/nginx/html/
COPY images /usr/share/nginx/html/images

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
