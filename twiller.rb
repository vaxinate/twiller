require 'cinch'
require 'nokogiri'
require 'open-uri'
require_relative 'plugins/auto_op'
require_relative 'plugins/dice'
require_relative 'plugins/spotify'
require_relative 'plugins/butts'
require_relative 'plugins/youtube'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = 'irc.freenode.net'
    c.channels = ['#twillers']
    c.nick = 'twillbot'
    c.plugins.plugins = [AutoOp, Dice, Spotify, Youtube, Butts]
  end
end

bot.start
