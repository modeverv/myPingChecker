require 'net/ping'

pinger = Net::Ping::External.new('192.168.111.14')
loop do
  print Time.now.to_s + " "
  if pinger.ping?
    puts "ok"
  else
    puts "ng"
    system("say error")
  end
  sleep(1)
end
