# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  require 'teacup'
  require 'bubble-wrap'
  require 'motion-cocoapods'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'OAuthTest'

  app.pods do
    pod 'gtm-oauth2'
  end
end
