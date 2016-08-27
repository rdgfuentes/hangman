Feature: Ahorcado

Scenario: Iniciar juego

	Given Se ingresa al juego
	Then muestra "Bienvenidos al juego del Ahorcado"

Scenario: Usuario ingresa letra

	Given Se ingresa al juego
	When Usuario ingresa letra "A"
	And hace click en Enviar
	Then muestra letra "A"
