require 'sinatra'
# require 'sinatra_reloader'
require_relative 'setting'

get '/' do
  client = Client.new
  text = 'tweet by sinatra'
  client.update(text)
  "#{text}"
end
