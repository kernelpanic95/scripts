#!/bin/bash

sleep 3
mpv --no-video ~/git/scripts/audio/startup_sound/startup.mp3

files=(~/git/scripts/audio/voice_sounds/*)
sleep 2
mpv --no-video "${files[RANDOM % ${#files[@]}]}"
