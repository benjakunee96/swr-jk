# Dockerfile (Ubuntu + Nginx)
FROM ubuntu:22.04

# ติดตั้ง nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# ใส่หน้า HTML ของเรา (ubuntu nginx ใช้ /var/www/html เป็น root)
COPY index.html /var/www/html/index.html

# เปิดพอร์ต 80
EXPOSE 80

# รัน nginx แบบ foreground
CMD ["nginx", "-g", "daemon off;"]
