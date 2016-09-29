# Description:
#   Display "The Battle" image
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   knowing is half the battle - display "The Battle" image
#
# Author:
#   coyled
#
# Src: https://github.com/github/hubot-scripts/blob/master/src/scripts/thebattle.coffee

thebattle = [
  "http://static2.nerduo.com/thebattle_zoom.png",
  "http://www.hippoquotes.com/img/gi-joe-quotes-knowing-is-half-the-battle/gi-joe-knowing-is-half-the-battle-t-shirt-shirtaday-2.jpg",
  "http://images.huffingtonpost.com/2016-03-07-1457387813-3802365-PHOTO2.jpeg",
  "https://cdn.drawception.com/images/panels/2013/6-18/BAP4z12g2k-2.png",
  "http://static.tvtropes.org/pmwiki/pub/images/thebattle_9887.png"
]

module.exports = (robot) ->
  robot.hear /knowing is half the battle/i, (msg) ->
    msg.send msg.random thebattle
