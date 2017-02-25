require 'rubygems'
require 'sinatra'
require 'httparty'
require 'active_record'
require 'activerecord-sqlserver-adapter'
require 'json'




before do
  content_type :json

end

get '/' do
  Tarefa.select(:tarefaNome).to_json
end

ActiveRecord::Base.establish_connection(
  :adapter => "sqlserver",
  :host => "tcp:checklistrb.database.windows.net",
  :username => "sa123",
  :password => "2684Fbi6",
  :database => "checklist")

class Tarefa < ActiveRecord::Base
   self.table_name = "tblTarefa"
end
