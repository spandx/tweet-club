#!/usr/bin/env ruby

require 'bundler/inline'


gemfile do
  source 'https://rubygems.org'

  gem 'twitter', '~> 7.0'
end

require 'erb'
require 'yaml'

class Configuration
  def initialize(hash)
    @hash = hash
  end

  def self.load(path)
    erb = ERB.new(path.read)
    raw_yaml = erb.result

    new(YAML.safe_load(raw_yaml))
  end

  def create_client
    default_profile = @hash['profiles']['default']
    profile = @hash['profiles'][default_profile]

    Twitter::REST::Client.new do |config|
      config.consumer_key = profile['consumer_key']
      config.consumer_secret = profile['consumer_secret']

      config.access_token = profile['access_token']
      config.access_token_secret = profile['access_token_secret']
    end
  end
end

config = Configuration.load(Pathname.new(Dir.home).join(".tweetclubrc"))

client = config.create_client

client.search("#rubyconf").each do |tweet|
  puts [tweet.user.screen_name, tweet.text].inspect
end
