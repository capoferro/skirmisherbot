require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.nick = "skirmisher"
    c.server = "skirmisher.net"

    @production = true
    c.channels = ["#skirmisher", "#megashark"]
    c.channels = ["#skirmisher"] unless @production
    
  end

  on :message, "!up" do |m|
    m.channel.op(m.user)
  end
end

bot.start
