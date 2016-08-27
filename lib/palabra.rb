class Palabra
	def initialize(lista)
		change lista.sample
	end
	def contiene? letra

		ok = letra.length == 1 && @palabra.downcase.include?(letra.downcase)
		@intentos -= ok ? 0 : 1
		ok
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
		reiniciar
		@palabra = p
	end
	def reiniciar
		@intentos=6
	end
end
