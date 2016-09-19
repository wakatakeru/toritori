require 'sinatra'
# require 'sinatra_reloader'
require_relative 'setting'

get '/' do
  client = Client.new

  erb :index
  client.user_timeline
  
=begin
  client.timeline.each do |tweet|
    print '<hr>'
    print "#{tweet.user} | #{tweet.full_text}"
  end
=end
end

post '/send' do
  client = Client.new
  text = params[:message]
  client.update(text)
  redirect '/'
end
