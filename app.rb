require 'sinatra'

get '/' do
    @letraIngresada = "" 
    erb :index
end

post '/enviar' do
  @letraIngresada = params[:letra] 
  erb :index
end
