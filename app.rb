require 'sinatra'
require './lib/palabra'

PALABRA=Palabra.new(["hangman", "hola", "mundo", "juan", "leo", "ensalada", "pepe", "auto", "azul", "pepino"])
get '/' do
    @letraIngresada = "" 
	@patron=PALABRA.obtener_patron
	@@intentos=6
    erb :index
end
get '/define/:x' do

	PALABRA.change params[:x]
    @letraIngresada = "" 
	@patron=PALABRA.obtener_patron
    erb :index
end
post '/enviar' do
  @letraIngresada = params[:letra] 
	@patron=PALABRA.obtener_patron
	ok=PALABRA.contiene?(@letraIngresada)
  @resultado = ok ? "OK" : "FAIL"
  @@intentos -= ok ? 0 : 1
  erb :index
end
