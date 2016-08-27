require "./lib/palabra"
require "./app"
describe "Definir palabra a partir de lista" do
	it "La palabra se obtiene a partir de una lista" do
		lista=["hola","mundo"]		
		p=Palabra.new(lista)		
		palabra=p.obtener_palabra
		lista.should include(palabra)
	end

end
