#!/bin/bash
twitchstreamers=(crazymango_vr aeriytheneko isthisrealvr)
game="VRChat"
destpath="./" #Change to appropriate location. Will save to local if not defined
configfile="./.twitchrecord.conf"
authorizationfile="./.twitchcreds.conf"

source ./twitch.sh
source ./kick.sh



fnKickStart(){
	for streamer in "${kickstreamers[@]}"; do
		fnKickConfig
	done
}
