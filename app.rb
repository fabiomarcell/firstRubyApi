require 'rubygems'
require 'sinatra'
require 'httparty'
require 'active_record'
require 'activerecord-sqlserver-adapter'
require 'tiny_tds'
require 'json'




before do
  content_type :json

end

get '/' do
  [{v1: "Foo"},{v1: "Bar"}].to_json
end

ActiveRecord::Base.establish_connection(
  :adapter => "sqlserver",
  :host => "tcp:checklistrb.database.windows.net",
  :username => "sa123",
  :password => "2684Fbi6",
  :database => "checklist")

class Tarefa < ActiveRecord::Base
   set_table_name "tblTarefa"
end
