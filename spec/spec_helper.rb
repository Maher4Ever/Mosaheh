# encoding: UTF-8

require 'rubygems'
require 'rspec'

path = File.expand_path(File.dirname(__FILE__) + "/../lib/")
$LOAD_PATH.unshift(path) unless $LOAD_PATH.include?(path)

require 'mosaheh' 

def load_misencoded_sample(filename)
  File.read("#{File.dirname(__FILE__)}/misencoded_samples/#{filename}").chomp
end
