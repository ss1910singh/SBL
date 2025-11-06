#!/bin/bash

mkdir -p simple_web_app

cat <<EOF > simple_web_app/index.html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Simple Web App</title>
<style>
  body { font-family: Arial, sans-serif; margin: 40px; background-color: #f0f0f0; }
  h1 { color: #333; }
  p { color: #666; }
</style>
</head>
<body>
<h1>Hello from HTML, CSS and JS Docker container</h1>
<p>This is a simple web app served using Apache httpd Docker image.</p>
<script>
  console.log("Hello from JavaScript!");
</script>
</body>
</html>
EOF

cat <<EOF > simple_web_app/httpd.conf
ServerName localhost
EOF

cat <<EOF > simple_web_app/Dockerfile
FROM httpd:latest
COPY ./ /usr/local/apache2/htdocs/
COPY httpd.conf /usr/local/apache2/conf/extra/httpd-custom.conf
RUN echo "Include conf/extra/httpd-custom.conf" >> /usr/local/apache2/conf/httpd.conf
EXPOSE 80
CMD ["httpd-foreground"]
EOF

cd simple_web_app

docker build . -t dockerhubusername/simple_web_app

docker run --name simple_web_app -p 3000:80 dockerhubusername/simple_web_app
