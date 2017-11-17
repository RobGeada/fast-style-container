FROM rgeada/fast:base
MAINTAINER Rob Geada

USER root
ADD images /home/fast-style/images/other

ADD style.sh /home/fast-style/
ADD ocEmail.py /home/fast-style/

RUN	chmod +x /home/fast-style/style.sh;

# Start the main process
CMD ["/bin/bash", "/home/fast-style/style.sh"]