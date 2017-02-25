require 'rubygems'
require 'sinatra'
require 'httparty'
require 'active_record'
require 'json'




before do
  content_type :json

end

get '/' do
  [{v1: "Foo"},{v1: "Bar"}].to_json
end
