FROM bigboards/java7-butterfly-__arch__

MAINTAINER bigboards <hello@bigboards.io>

# Download Pig
RUN curl -s http://www.eu.apache.org/dist/pig/pig-0.15.0/pig-0.15.0.tar.gz | tar -xz -C /opt
RUN cd /opt && ln -s ./pig-0.15.0 pig

ENV PIG_HOME /opt/pig
ENV PATH ${PATH}:${PIG_HOME}/bin

CMD ["/bin/bash"]
