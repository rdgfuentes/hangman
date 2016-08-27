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

describe "Buscar letra en palabra" do

	it "indica true cuando la letra se encuentra en la palabra carlos" do
		p=Palabra.new(["carlos"])
		resultado = p.contiene?("a")
		expect(resultado).to be == true
	end

	it "indica false cuando la letra no se encuentra en la palabra carlos" do
		p=Palabra.new(["carlos"])
		resultado = p.contiene?("x")
		expect(resultado).to be == false
	end

	it "indica false cuando la letra esta vacia" do
		p=Palabra.new(["carlos"])
		resultado = p.contiene?("")
		expect(resultado).to be == false
	end

end

describe "Contabilizar intentos" do
	it "cuando la letra no se encuenta disminuyen los intentos en 1" do
		p=Palabra.new(["carlos"])
		expect(p.obtener_intentos).to be == 6
		p.contiene?("x")
		expect(p.obtener_intentos).to be == 5
	end		
end
