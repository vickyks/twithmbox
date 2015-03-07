# twithmbox
Yes, that's a portmantau of twitter and rhythmbox. Yes, I should also have mentioned MusixMatch in there too, but it's a mouthfull then. Oh, and that the only place to squeeze that third word in would be at the x of box, so it would be twithmboxMatch, but that's a sucky name.

Emo as you like, tweets songs that are playing. Requires a lot of things. (rhythmbox, musixmatch api key, twitter api key)

## Setup
To install this on ubuntu (cause, you know, that's all anyone uses now):

### Listen to your songs with rhythmbox. 
Get used to it, you can build shortcuts with it, and it's cool.
sudo apt-get install rhythmbox

### Now pull the code from the github mothership
git clone https://github.com/vickyks/twithmbox.git
chmod a+x tweetit.rb

### Set up a twitter account, then a developer account.
https://dev.twitter.com/

### MusixMatch. You'll need this too. Go on, get cracking.
https://developer.musixmatch.com/

### Fill in the keys.json file. 
You can't have my keys, those are mine and I don't want everyone tweeting from my account.

### Now it's time to get in touch with your inner black-eyeliner-wearing teenage self. 
Run with ./tweetit.rb to spam your loyal followers with lyrics to that song that you had that major epiphany to once. Maybe you should go find yourself in South East Asia after all.

Good luck!
