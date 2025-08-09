# Mulai dari image n8n resmi yang terbaru
FROM n8nio/n8n:latest

# Ganti user ke root SEBELUM menjalankan perintah instalasi
# Ini adalah langkah kuncinya!
USER root

# Sekarang jalankan perintah instalasi TANPA sudo, karena kita sudah menjadi root.
RUN apk add --no-cache python3 py3-pip ffmpeg
RUN pip3 install yt-dlp

# PENTING: Setelah selesai, kembalikan user ke 'node' untuk keamanan.
# Container akan berjalan sebagai user non-root, yang merupakan praktik terbaik.
USER node
