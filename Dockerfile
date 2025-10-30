# Use a lightweight Nginx image designed for static content
FROM nginx:stable-alpine

# Copy the entire contents of the current directory (your HTML, CSS, JS, and image)
# to the default Nginx web directory inside the container.
# The 'index.html' file will automatically be served as the main page.
COPY . /usr/share/nginx/html

# The default Nginx configuration already exposes port 80.
# EXPOSE 80 
# The default CMD of the Nginx image runs the server, so we don't need to specify it.