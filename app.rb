require 'rubygems'
require 'sinatra'
#require 'httparty'
require 'active_record'
require 'activerecord-sqlserver-adapter'
require 'odbc'
require 'logger'

require 'json'




before do
  content_type :json

end

get '/' do
  tarefa = Tarefa.all
  tarefa.to_json
end

post '/upload' do
    tempfile = params[:file][:tempfile]
    filename = params[:file][:filename]
    cp(tempfile.path, "public/uploads/#{filename}")
    'Yeaaup'
end


  ActiveRecord::Base.establish_connection(
      :adapter => 'sqlserver',
      :mode => 'odbc',
      :dsn => 'checklistrb.database.windows.net',
      :username => 'sa123',
      :password => '2684Fbi6'
  )

#
class Tarefa < ActiveRecord::Base
   self.table_name = "tblTarefa"
end

tarefa = Tarefa.all

#########INSERT###########
#account = Tarefa.new
#account.tarefaNome = "AAA"
#account.save
