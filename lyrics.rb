#!/usr/bin/env ruby
# Oh yes, there's a freakin rapper for musixmatch!
require 'musix_match'

# maybe this should be a helper function
def get_song()
	now_playing = `rhythmbox-client --print-playing`

	# Clean it up. Remove ".mp3", "Unknown", then clear empties.
	playing = now_playing.gsub(".mp3\n",'').gsub('Unknown','').split("-").map(&:strip).reject(&:empty?)
	return playing
end

def get_lyrics(key)
	# Lets play find the lyrics with musixmatch!
	# Set up keys for lyrics api
	MusixMatch::API::Base.api_key = key

	# Now find the lyrics
	song = get_song()
	artist = song[0]
	title = song[1]

	puts artist + " - " + title
	return MusixMatch.i_m_feeling_lucky("#{artist} - #{title}")
end
