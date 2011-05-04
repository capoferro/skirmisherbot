require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.nick = "skirmisher"
    c.server = "skirmisher.net"
    c.channels = ["#skirmisher"]
  end

  on :message, "!up" do |m|
    m.channel.op(m.user)
  end
end

bot.start
