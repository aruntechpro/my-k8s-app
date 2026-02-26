FROM nginx:alpine

# Security: Upgrade packages to pull in libpng >= 1.6.55-r0 (fixes CVE-2026-25646)
# Cleanup cache to keep image small
RUN apk update --no-cache && \
    apk upgrade --available --no-cache && \
    rm -rf /var/cache/apk/*

# Your original content
COPY index.html /usr/share/nginx/html/
