FROM ubuntu
MAINTAINER Andrew McDermott <andrew.iain.mcdermott@gmail.com>
RUN cd $HOME
RUN apt-get update
RUN apt-get install -y git
#RUN git clone https://git.openstack.org/stackforge/rally
RUN git clone https://github.com/openstack/rally
RUN ./rally/install_rally.sh
RUN mkdir -p /rally
WORKDIR /rally
CMD ["bash"]
