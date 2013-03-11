#!/bin/bash -e

# move to script path
cd `dirname $0`

# set the following env var before running this script
# * HUBOT_PORT
# * HUBOT_DOMAIN
# * HUBOT_IRC_NICK
# * HUBOT_GITHUB_TOKEN

export PORT=$HUBOT_PORT

export HUBOT_LOG_LEVEL="debug"

export HUBOT_IRC_ROOMS="#easyrpg"
export HUBOT_IRC_SERVER="irc.freenode.net"
export HUBOT_IRC_DEBUG=On
export HUBOT_IRC_UNFLOOD="true"

export HUBOT_URL="http://$HUBOT_DOMAIN:$PORT"

export FEED_CHECK_INTERVAL=60

# npm update

./update.coffee

./node_modules/hubot/bin/hubot -a irc