FROM slobo/carton:5.20.2-1.0.19

RUN \
  apt-get update \
  && apt-get install -y libdbd-pg-perl postgresql-client libpq-dev zsh

RUN \
  cpanm -v DBD::Pg DBD::mysql Template DWHEELER/App-Sqitch-0.9995.tar.gz
