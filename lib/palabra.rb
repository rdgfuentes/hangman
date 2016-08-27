class Palabra
	def initialize(palabra)
		@palabra=palabra
	end
	def obtener_patron
		"_ " * @palabra.length
	end
end