FROM perl:latest

RUN curl -O https://github.com/shundhammer/qdirstat/archive/1.0.tar.gz
RUN mkdir -p /usr/qdirstat \
	&& tar -xzf 1.0.tar.gz /usr/qdirstat

WORKDIR /usr/qdirstat/scripts
CMD [ "perl", "./qdirstat-cache-writer" ]

