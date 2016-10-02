FROM irssi
MAINTAINER thomaswelton

USER root
RUN apt-get update
RUN apt-get install -y build-essential

# Net::SSLeay dependency
RUN apt-get install -y libssl-dev
# XML::LibXML dependency
RUN apt-get install -y libxml2-dev
# Tmux
RUN apt-get install -y tmux

RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpan Archive::Zip Net::SSLeay HTML::Entities XML::LibXML Digest::SHA JSON JSON::XS

ADD install.sh /root/install.sh
ADD start.sh /home/user/start.sh
ADD connect.sh /usr/bin/connect-irssi
ADD tmux.conf /home/user/.tmux.conf
ADD autodl-irssi-community /home/user/autodl-irssi-community/

VOLUME /home/user/watch

ENV PUID 1000
ENV PGID 1000
ENV HOME /home/user

CMD ["/root/install.sh"]
