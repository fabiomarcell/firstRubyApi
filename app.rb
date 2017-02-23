require 'rubygems'
require 'sinatra'
require 'httparty'
require 'active_record'
require 'json'

before do
  content_type :json
end

get '/' do
  a = [{v1: "Foo"}, {v1: "Bar"}]
  a.to_json
end
