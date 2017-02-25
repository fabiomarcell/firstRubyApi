require 'rubygems'
require 'sinatra'
require 'httparty'
require 'active_record'

require 'json'




before do
  content_type :json

end

get '/' do
  Tarefa.select(:tarefaNome).to_json
end

ActiveRecord::Base.establish_connection(
  :adapter => "sqlserver",
  :host => "checklistrb.database.windows.net",
  #:host => "tcp:checklistrb.database.windows.net",
  :username => "sa123",
  :password => "2684Fbi6",
  :database => "checklist")

class Tarefa < ActiveRecord::Base
   self.table_name = "tblTarefa"
end

account = Tarefa.new
account.tarefaNome = "AAA"
account.save
