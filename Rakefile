# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'RubyMotionTest'
    app.identifier = 'cl.cybercastle.castlebot'

  app.pods do
    pod 'Google-Maps-iOS-SDK'
  end
  app.vendor_project('vendor/Pods/Google-Maps-iOS-SDK/GoogleMaps.framework',
                     :static,
                     :products    => %w{GoogleMaps},
                     :headers_dir => 'Headers')
end