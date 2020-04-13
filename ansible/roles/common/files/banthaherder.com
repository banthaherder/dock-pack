server {
    listen 80 default_server;
    listen [::]:80 default_server;

    ssl off;

    root /html;

    index index.html;

    server_name _;

    location / {
        try_files $uri $uri/ =404;
    }
}