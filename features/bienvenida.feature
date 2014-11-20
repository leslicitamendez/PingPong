Feature: bienvenida
Scenario: mensaje de bienvenida
     Given cuando me encuentro en la pagina de inicio
     Then veo el mensaje de "bienvenido al juego"

Scenario: datos de los jugadores
    Given cuando me encuentro en la pagina de inicio
    Then veo el campo de "jugador1"
    Then veo el campo de "jugador2"
    Then veo el boton de "jugar"

Scenario: llenando datos
    Given cuando me encuentro en la pagina de inicio
    And introduzco en el campo "jugador1" el valor de "esteban"
    And introduzco en el campo "jugador2" el valor de "sebastian"
    When presiono el boton "jugar"
    Then deberia ver "esteban vs sebastian"