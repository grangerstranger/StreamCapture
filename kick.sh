#!/bin/bash


fnKickStart(){
	for streamer in "${kickstreamers[@]}"; do
		fnKickConfig
	done

if [[ -z $(ps -ef | grep -v grep | grep "https://kick.com/$streamer" | grep streamlink) ]]; then
	screen -dmS $streamer bash -c "streamlink --output \"$destpath/kick/{author}/{title} {id}.ts\" https://kick.com/$streamer best"
fi
