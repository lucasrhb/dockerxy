# Pull base image.
FROM dockerfile/ubuntu

# Install ziproxy & supervisord
RUN apt-get update && apt-get install -y supervisor ziproxy
RUN mkdir -p /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY conf/ziproxy.conf /etc/ziproxy/ziproxy.conf
COPY conf/http.passwd /etc/ziproxy/http.passwd


#ADD conf/ziproxy.conf /etc/ziproxy/ziproxy.conf
#ADD conf/http.passwd /etc/ziproxy/http.passwd

# Define default command.
CMD ["/usr/bin/supervisord"]

# Expose ports.
EXPOSE 8080

