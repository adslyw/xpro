require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
ENV['NLS_LANG'] = 'SIMPLIFIED CHINESE_CHINA.AL32UTF8'
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
