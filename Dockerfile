FROM slobo/carton:5.20.2-1.0.19

RUN \
  apt-get update \
  && apt-get install -y libdbd-pg-perl postgresql-client libpq-dev zsh

RUN \
  cpanm App::Sqitch DBD::Pg Template
