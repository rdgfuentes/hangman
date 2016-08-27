Feature: Ahorcado

Scenario: Iniciar juego

	Given Se ingresa al juego
	Then muestra "Bienvenidos al juego del Ahorcado"

Scenario: Mostrar un espacio de la palabra por cada letra

	Given Se ingresa al juego
	When Existe palabra a adivinar
	Then Muestra el patron de la palabra


Scenario: Usuario ingresa letra

	Given Se ingresa al juego
	When Usuario ingresa letra "A"
	And hace click en Enviar
	Then muestra letra "A"
