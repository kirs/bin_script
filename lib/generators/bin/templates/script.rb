#!/usr/bin/env ruby

require 'pathname'
path = File.expand_path("../../Gemfile", Pathname.new(__FILE__).realpath)

APP_ROOT = File.dirname(path)
ENV['BUNDLE_GEMFILE'] ||= path

require 'rubygems'
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

load Gem.bin_path('bin_script', 'bin_helper')
