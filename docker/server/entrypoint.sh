#!/usr/bin/env bash

srcds_args=(
  -game garrysmod
  -systemtest # Allow shutting down from ingame.
  -norestart
  -ip 127.0.0.1
  +gamemode sandbox
  +map gm_construct
  -maxplayers 1
  -disableluarefresh
)

"$SVR_ROOT"/srcds_run "${srcds_args[@]}"
