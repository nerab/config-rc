#!/usr/bin/env ruby

#
# Test like
#
# HOME=$(pwd)/test/fixtures app_some=foobar app_other=else test/bin/app.rb
#

require 'bundler'
Bundler.require

require 'config-rc'

class App
  APP_NAME = 'app'

  def initialize
    @config ||= ConfigRC::Configuration.new(APP_NAME)
  end

  def to_s
    "Hi, my name is '#{APP_NAME}', and I am configured like this:\n#{@config}"
  end
end

puts App.new.to_s
