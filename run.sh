#!/usr/bin/env bashio

export DISCORD_TOKEN
export SPOTIFY_CLIENT_ID
export SPOTIFY_CLIENT_SECRET
export YOUTUBE_API_KEY

DISCORD_TOKEN=$(bashio::config 'discord_token')
SPOTIFY_CLIENT_ID=$(bashio::config 'spotify_client_id')
SPOTIFY_CLIENT_SECRET=$(bashio::config 'spotify_client_secret')
YOUTUBE_API_KEY=$(bashio::config 'youtube_api_key')

node --enable-source-maps "dist/scripts/migrate-and-start.js"
