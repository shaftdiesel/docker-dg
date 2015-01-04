FROM debian

RUN apt-get update \
 && apt-get install -y dansguardian \
 && mv /etc/dansguardian/dansguardian.conf /etc/dansguardian/dansguardian.conf.dist \
 && rm -rf /var/lib/apt/lists/* # 20140928

ADD dansguardian.conf /etc/dansguardian/dansguardian.conf

ADD start /start
RUN chmod 755 /start

EXPOSE 8080

CMD ["/start"]
