class Palabra
	def initialize(lista)
		@palabra=lista.sample
	end
	def obtener_patron
		"_ " * @palabra.length
	end
	def obtener_palabra
		@palabra
	end
end
