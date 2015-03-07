#!/usr/bin/env ruby
require 'json'
require 'twitter'
require './lyrics.rb'

# Tweet 140 characters of lyrics. 
# Take an argument from the rhythmbox api.
# Written by Vicky Stephens.

# Setup access.
# For github purposes take a json config file and push it
# into the REST client

keyhash = JSON.parse(File.read("keys.json"))

hash = keyhash["twitter"]
client = Twitter::REST::Client.new do |config|
	config.consumer_key = hash["consumer_key"]
	config.consumer_secret = hash["consumer_secret"]
	config.access_token = hash["access_token"]
	config.access_token_secret = hash["access_token_secret"]
end

# Find the lyrics
lyrics = get_lyrics(keyhash["musixmatch"]["key"])

# twitter must be 140 characters, lazy dots for cutoff
unless(lyrics.include?("Lyrics not found"))
	# tweet = lyrics.gsub("\n",', ')[0..130]+"..."
	lyrics_array = lyrics.split("\n")
	tweet = ""
	count = 0
	while tweet.length < 110
		tweet = tweet + lyrics_array[count] + ", "
		count = count + 1 # fucking filthy
	end
	tweet = (tweet + " ##{get_song[0]}")[0..140]
	client.update(tweet)
else
	puts "It's no good cap'n, she cannae take it!"
end
