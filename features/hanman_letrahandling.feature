Feature: Manejo de Letra en Lista

Scenario: buscar letra ingresada en palabra

	Given Se ingresa al juego
	When Existe palabra a adivinar
	And Usuario ingresa letra "A"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "OK"


Scenario: buscar letra ingresada en palabra y no existe

	Given Se ingresa al juego
	When Existe palabra a adivinar
	And Usuario ingresa letra "X"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "FAIL"