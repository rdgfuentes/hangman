Given(/^Se ingresa al juego$/) do
	visit '/'
end

Then(/^muestra "(.*?)"$/) do |texto|
	last_response.body.should =~ /#{texto}/m
end
