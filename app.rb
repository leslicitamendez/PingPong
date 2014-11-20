require 'sinatra'
  $marcador1 = 0
  $marcador2 = 0
  $jugador1 = nil 
  $jugador2 = nil 
get '/' do
  erb :bienvenida
end
post '/jugar' do
  
  $jugador1 = params[:jugador1]
  $jugador2 = params[:jugador2]

  erb :juego
end
post '/anotar1' do
	if $marcador1 == 30
		$marcador1 = $marcador1 + 10
	elsif $marcador1 < 30
	  $marcador1 = $marcador1 + 15		
	end

  erb :juego
end

post '/anotar2' do
	if $marcador2 == 30
		$marcador2 = $marcador2 + 10
	elsif $marcador2 < 30
	  $marcador2 = $marcador2 + 15		
	end
  erb :juego
end