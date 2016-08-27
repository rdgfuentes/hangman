require "./lib/palabra"
describe "Mostrar patron de palabra" do
	it "Cuando la palabra es 'hola' muestra 4 posiciones" do
		p=Palabra.new(["hola"])
		patron=p.obtener_patron
		expect(patron).to be == "_ _ _ _ "
	end

	it "Cuando la palabra es 'carlos' muestra 6 posiciones" do
		p=Palabra.new(["carlos"])
		patron=p.obtener_patron
		expect(patron).to be == "_ _ _ _ _ _ "
	end
end
