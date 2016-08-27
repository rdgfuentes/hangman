Feature: Manejo de Letra en Lista

Scenario: muestra cantidad de intentos al iniciar el juego

	Given Se ingresa al juego
	When La palabra a adivinar es "HANGMAN"
	Then existen "6" intentos
	And el juego no termino

Scenario: buscar letra ingresada en palabra

	Given Se ingresa al juego
	When La palabra a adivinar es "HANGMAN"
	And Usuario ingresa letra "A"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "OK"
	And el juego no termino


Scenario: buscar letra ingresada en palabra y no existe

	Given Se ingresa al juego
	When La palabra a adivinar es "HANGMAN"
	And Usuario ingresa letra "X"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "FAIL"
	And el juego no termino

Scenario: al no adivinar una letra los intentos pendientes disminuye en 1

	Given Se ingresa al juego
	When La palabra a adivinar es "HANGMAN"
	And Usuario ingresa letra "Z"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "FAIL"
	And existen "5" intentos
	And el juego no termino


Scenario: al adivinar una letra los intentos pendientes se mantienen

	Given Se ingresa al juego
	When La palabra a adivinar es "HANGMAN"
	And Usuario ingresa letra "A"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "OK"
	And existen "6" intentos
	And el juego no termino

Scenario: al no adivinar la segunda letra los intentos pendientes disminuyen en 2

	Given Se ingresa al juego
	When La palabra a adivinar es "HANGMAN"
	And Usuario ingresa letra "Z"
	And hace click en Enviar
	And Usuario ingresa letra "Z"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "FAIL"
	And existen "4" intentos
	And el juego no termino


Scenario: al agotar los 6 intentos el jugador pierde

	Given Se ingresa al juego
	When La palabra a adivinar es "HANGMAN"
	And Usuario ingresa letra "Z"
	And hace click en Enviar
	And Usuario ingresa letra "X"
	And hace click en Enviar
	And Usuario ingresa letra "Y"
	And hace click en Enviar
	And Usuario ingresa letra "T"
	And hace click en Enviar
	And Usuario ingresa letra "U"
	And hace click en Enviar
	And Usuario ingresa letra "R"
	And hace click en Enviar
	Then busca la letra ingresada en la palabra y muestra resultado "FAIL"
	And existen "0" intentos
	And el jugador pierde