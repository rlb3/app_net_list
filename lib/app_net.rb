require "app_net/version"
require 'rest_client'
require 'json'

module AppNet
  def self.posts
    stream = RestClient.get 'https://alpha-api.app.net/stream/0/posts/stream/global'
    json   = JSON.parse stream

    data_stash = []
    json['data'].each do |data|
      user = data['user']['username']
      message = data['text']
      data_stash << "#{user}: #{message}\n"
    end
    data_stash                       
  end
end
