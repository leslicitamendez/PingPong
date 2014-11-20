Feature: juego
Scenario: marcadores del juego
     Given me encuentro en la pagina del juego
     Then veo el puntaje de "0" para jugador1
     And veo el puntaje de "0" para jugador2 
  

Scenario: botones para anotar
     Given me encuentro en la pagina del juego
    Then veo el boton de "anotar" de jugador1
    Then veo el boton de "anotar" de jugador2

Scenario: sumar el marcador de jugador1
  Given me encuentro en la pagina del juego
  When hago click en el boton de "anotar" del jugador1
  Then el "jugador1" suma "15"

Scenario: sumar el marcador de jugador2
  Given me encuentro en la pagina del juego
  When hago click en el boton de "anotar" del jugador2
  Then el "jugador2" suma "15"


Scenario: determinar ganador
  Given me encuentro en la pagina del juego
  When el marcador1 es igual a "40"
  Then muestra "jugador1 gana la partida"

Scenario: determinar ganador2
  Given me encuentro en la pagina del juego
  When el marcador2 es igual a "40"
  Then muestra "jugador2 gana la partida"
  











