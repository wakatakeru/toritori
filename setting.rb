require 'twitter'
require 'json'

class Client
  def initialize
    client_data = JSON.parse(File.read('setting.json'))
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = client_data['consumer_key']
      config.consumer_secret     = client_data['consumer_secret']
      config.access_token        = client_data['access_token']
      config.access_token_secret = client_data['access_token_secret']
    end    
  end

  def update(tweet)
    @client.update(tweet)
  end

  def home_timeline
    @client.home_timeline
  end
end
