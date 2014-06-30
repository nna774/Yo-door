# -*- coding: utf-8 -*-
# encoding: UTF-8

require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc"
    c.channels = ["#keylog:*.jp"]
    c.port = 16660
    c.nick = "DOOR"
    c.user = "YoYo"
  end
  
  
  on :message, /.* Unlock\.$/ do |m|
    `curl http://api.justyo.co/yoall/ -X POST -d "api_token=YOUR_TOKEN" >/dev/null 2> /dev/null`
  end

end

bot.start
