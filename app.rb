require 'sinatra'
require './lib/palabra'

get '/' do
    @letraIngresada = "" 
	@palabra=Palabra.new("hangman")
	@patron=@palabra.obtener_patron
    erb :index
end

post '/enviar' do
  @letraIngresada = params[:letra] 
  @resultado = "OK"
  erb :index
end
