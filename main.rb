require 'sinatra'
# require 'sinatra_reloader'
require_relative 'setting'

get '/' do
  erb :index
end

post '/send' do
  client = Client.new
  text = params[:message]
  client.update(text)
  erb :index
end
