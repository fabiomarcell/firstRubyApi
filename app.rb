require 'rubygems'
require 'sinatra'
require 'httparty'
require 'active_record'
require 'tiny_tds'
require 'json'




before do
  content_type :json

end

get '/' do
  print "test"
end
