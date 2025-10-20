# Use official Nginx image
FROM nginx:alpine

# Copy HTML and CSS files into Nginx web root
COPY html/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
