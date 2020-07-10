# Create static pages and host them with this Dockerfile
#
# Build image with
# docker build -t cindersuperhero .
#
# Check what is inside the container when it is running with:
# docker run -it --rm --name cindersuperhero cindersuperhero /bin/sh
#
# Run the container with
# docker run -d --rm -p 8000:80 --name cindersuperhero cindersuperhero
#
# Stop the container with
# docker stop cindersuperhero


FROM python:3.7-alpine AS builder

ADD . /app
WORKDIR /app

RUN \
    apk add --update ca-certificates bash build-base && \
    pip install mkdocs && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/* && \
    mkdocs build

FROM httpd:alpine
COPY --from=builder /app/site/ /usr/local/apache2/htdocs/
EXPOSE 80
