FROM python:3.10

RUN apt update && apt upgrade -y


# Copying Requirements
COPY requirements.txt /requirements.txt

# Installing Requirements
RUN cd /
RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt
RUN mkdir /ictbot
WORKDIR /ictbot
COPY startup.sh /startup.sh

# Running Music Player Bot
CMD ["/bin/bash", "/startup.sh"]
