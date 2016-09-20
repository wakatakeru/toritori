require 'sinatra'
# require 'sinatra_reloader'
require_relative 'setting'

get '/' do
  client = Client.new

  erb :index

  client.home_timeline.each do |tweet|
    '<hr>'
    "#{tweet.user} | #{tweet.full_text}"
  end
end

post '/send' do
  client = Client.new
  text = params[:message]
  client.update(text)
  redirect '/'
end
