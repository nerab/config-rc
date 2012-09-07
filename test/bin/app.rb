#!/usr/bin/env ruby

#
# Test like
#
# HOME=$(pwd)/test/fixtures app_something=env test/bin/app.rb
#

require 'bundler'
Bundler.require

require 'config-rc'

class App
  attr_reader :config
  APP_NAME = 'testconfig'

  def initialize
    @config = ConfigRC::Configuration.new(APP_NAME, 'foo' => 'option')
  end

  def to_s
    "Hi, my name is '#{APP_NAME}', and I do " <<
      if @config.any?
        "have configuration:"
      else
        "not have any configuration."
      end
  end
end

app = App.new
puts app.to_s
app.config.each do |k, v|
  puts "#{k}=#{v}"
end
