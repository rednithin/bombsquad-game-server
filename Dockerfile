FROM python:2-buster

WORKDIR /app

RUN wget https://files.ballistica.net/bombsquad/builds/BombSquad_Server_Linux_64bit_1.4.150.tar.gz
RUN tar -xvf BombSquad_Server_Linux_64bit_1.4.150.tar.gz


WORKDIR /app/BombSquad_Server_Linux_64bit_1.4.150
COPY config.py config.py
RUN cat config.py

EXPOSE 43210
CMD ["./bombsquad_server"]