# Mulai dari image n8n
FROM n8nio/n8n:latest

# Mencoba install paket menggunakan sudo, ini akan GAGAL
# Karena image n8n berjalan sebagai user 'node' secara default, bukan 'root'
RUN sudo apk add --no-cache python3 py3-pip ffmpeg
RUN sudo pip3 install yt-dlp
