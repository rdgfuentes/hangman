class Palabra
	def initialize(lista)
		@palabra=lista.sample
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
	def change p
		@palabra = p
	end
end
