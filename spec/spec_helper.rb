# encoding: UTF-8

require 'rubygems'
require 'rspec'

path = File.expand_path(File.dirname(__FILE__) + "/../lib/")
$LOAD_PATH.unshift(path) unless $LOAD_PATH.include?(path)

require 'mosaheh' 
