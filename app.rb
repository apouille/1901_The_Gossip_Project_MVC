require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'router'

Gossiper = Router.new.perform