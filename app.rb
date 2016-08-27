require 'sinatra'
require './lib/palabra'

PALABRA=Palabra.new(["hangman", "hola", "mundo", "juan", "leo", "ensalada", "pepe", "auto", "azul", "pepino"])
get '/' do
    @letraIngresada = "" 
	@patron=PALABRA.obtener_patron
    erb :index
end

post '/enviar' do
  @letraIngresada = params[:letra] 
	@patron=PALABRA.obtener_patron
  @resultado = PALABRA.obtener_palabra.include?(@letraIngresada.downcase) ? "OK" : "FAIL"
  erb :index
end
