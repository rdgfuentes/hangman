Feature: Manejo de Letra en Lista

Scenario: buscar letra ingresada en palabra

	Given Se ingresa al juego
	When La palabra a adivinar es "HANGMAN"
	And Usuario ingresa letra "A"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "OK"


Scenario: buscar letra ingresada en palabra y no existe

	Given Se ingresa al juego
	When La palabra a adivinar es "HANGMAN"
	And Usuario ingresa letra "X"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "FAIL"

Scenario: muestra cantidad de intentos al iniciar el juego

	Given Se ingresa al juego
	Then existen "6" intentos

Scenario: al no adivinar una letra los intentos pendientes disminuye en 1

	Given Se ingresa al juego
	When La palabra a adivinar es "HANGMAN"
	And Usuario ingresa letra "Z"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "FAIL"
	And existen "5" intentos


Scenario: al adivinar una letra los intentos pendientes se mantienen

	Given Se ingresa al juego
	When La palabra a adivinar es "HANGMAN"
	And Usuario ingresa letra "A"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "OK"
	And existen "6" intentos