FROM cm2network/steamcmd

ENV SVR_ROOT=$HOMEDIR/garrysmod
ENV GAME_ROOT=$SVR_ROOT/garrysmod

RUN ./steamcmd.sh +force_install_dir $SVR_ROOT +login anonymous +app_update 4020 validate +quit

WORKDIR $GAME_ROOT
RUN mkdir -p addons/dumper/lua/includes/
COPY lua/autorun/dump.lua addons/dumper/lua/includes/dev_server_test.lua
COPY docker/server/server.cfg cfg/server.cfg

WORKDIR $SVR_ROOT
COPY docker/server/entrypoint.sh entrypoint.sh

#COPY docker/server/test.sh test.sh
ADD --chown=steam:steam --chmod=0770 https://github.com/LukWebsForge/SourceLogger/releases/download/v1.0/source_logger ./srcds_run

# 🤡
ENTRYPOINT ["/home/steam/garrysmod/entrypoint.sh"]
