FROM bigboards/java7-butterfly-__arch__

MAINTAINER bigboards <hello@bigboards.io>

# Download Pig
RUN curl -s http://www.eu.apache.org/dist/pig/pig-0.15.0/pig-0.15.0.tar.gz | tar -xz -C /opt
RUN cd /opt && ln -s ./pig-0.15.0 pig

# hadoop
RUN curl -s http://www.eu.apache.org/dist/hadoop/common/hadoop-2.6.0/hadoop-2.6.0.tar.gz | tar -xz -C /opt
RUN cd /opt && ln -s ./hadoop-2.6.0 hadoop

ENV HADOOP_PREFIX /opt/hadoop
ENV YARN_HOME /opt/hadoop
ENV HADOOP_YARN_HOME /opt/hadoop
ENV HADOOP_HDFS_HOME /opt/hadoop
ENV HADOOP_COMMON_HOME /opt/hadoop
ENV HADOOP_MAPRED_HOME /opt/hadoop
ENV HADOOP_CONF_DIR /opt/hadoop/etc/hadoop
ENV HDFS_CONF_DIR /opt/hadoop/etc/hadoop
ENV YARN_CONF_DIR /opt/hadoop/etc/hadoop

ENV PIG_HOME /opt/pig
ENV PATH ${PATH}:${PIG_HOME}/bin:${HADOOP_HOME}/bin

CMD ["/bin/bash"]
