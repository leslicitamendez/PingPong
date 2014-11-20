Given(/^me encuentro en la pagina del juego$/) do
	visit '/'
	fill_in("jugador1", :with => "esteban")
	fill_in("jugador2", :with => "sebastian")
	click_button("jugar")
end

Then(/^veo el puntaje de "(.*?)" para jugador(\d+)$/) do |puntaje, nro_jugador|
  last_response.body.should =~ /id="jugador#{nro_jugador}">0/m
end

#botones para anotar
Then(/^veo el boton de "(.*?)" de jugador(\d+)$/) do |nombre, valor|
	last_response.body.should =~ /#{nombre}/m
end 

# 3
When(/^hago click en el boton de "(.*?)" del jugador(\d+)$/) do |nombre, arg2|
  click_button(nombre)
end

Then(/^el "(.*?)" suma "(.*?)"$/) do |nombre, valor|
 last_response.body.should =~ /id="#{nombre}"/m
end
# determinar ganador
When(/^el marcador(\d+) es igual a "(.*?)"$/) do |nombre, valor|
 last_response.body.should =~ /#{nombre}/m
end

Then(/^muestra "(.*?)"$/) do |text|
	 last_response.body.should =~ /#{text}/m
end