require 'sinatra'
require './lib/palabra'

get '/' do
    @letraIngresada = "" 
	@palabra=Palabra.new("hangman")
	@patron=@palabra.obtener_patron
    erb :index
end

post '/enviar' do
	@palabra=Palabra.new("hangman")
  @letraIngresada = params[:letra] 
  @resultado = "hangman".include?(@letraIngresada.downcase) ? "OK" : "FAIL"
  erb :index
end
