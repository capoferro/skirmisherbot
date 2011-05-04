require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.nick = "skirmisher"
    c.server = "skirmisher.net"

    @production = false
    c.nick = "skirmisher"
    c.channels = ["#skirmisher", "#megashark"]
    unless @production
      c.nick = "skirmisher-test"
      c.channels = ["#skirmisher"]
    end
    
  end

  on :message, "!up" do |m|
    m.channel.op(m.user)
  end

  on :message, "!down" do |m|
    m.channel.deop(m.user)
  end
end

bot.start
