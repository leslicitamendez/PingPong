Given(/^cuando me encuentro en la pagina de inicio$/) do
	visit '/'
end

Then(/^veo el mensaje de "(.*?)"$/) do |text|
	last_response.body.should =~ /#{text}/m
end

Then(/^veo el campo de "(.*?)"$/) do |nombre|
  last_response.body.should =~ /#{nombre}/m
end

Then(/^veo el boton de "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

# escenario 3
Given(/^introduzco en el campo "(.*?)" el valor de "(.*?)"$/) do |campo, valor|
  fill_in(campo, :with => valor)
end

When(/^presiono el boton "(.*?)"$/) do |name|
  click_button(name)
end

Then(/^deberia ver "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end
