# Mulai dari image n8n resmi yang terbaru
FROM n8nio/n8n:latest

# Ganti ke user root untuk sementara agar bisa install paket
USER root

# Image n8n menggunakan Alpine Linux, jadi kita pakai package manager 'apk'.
# Kita install python3, pip (untuk install yt-dlp), dan ffmpeg (sangat direkomendasikan karena yt-dlp sering membutuhkannya)
RUN apk add --no-cache python3 py3-pip ffmpeg

# Gunakan pip untuk menginstall yt-dlp
RUN pip3 install yt-dlp

# PENTING: Kembali ke user 'node' standar n8n untuk keamanan
USER node