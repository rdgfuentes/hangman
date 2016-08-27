class Palabra
	def initialize(lista)
		@palabra=lista.sample
		@intentos=6
	end
	def contiene? letra
		@palabra.downcase.include?(letra.downcase)
	end
	def obtener_patron
		"_ " * @palabra.length
	end
	def obtener_palabra
		@palabra
	end
	def obtener_intentos
		@intentos
	end
	def change p
		@palabra = p
	end
end
