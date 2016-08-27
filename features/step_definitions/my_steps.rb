Given(/^Se ingresa al juego$/) do
	visit '/'
end

Then(/^muestra "(.*?)"$/) do |texto|
	last_response.body.should =~ /#{texto}/m
end

When(/^Usuario ingresa letra "(.*?)"$/) do |arg1|
  fill_in("letra", :with => arg1)
end

When(/^hace click en Enviar$/) do
  click_button("enviar")
end


Then(/^muestra letra "(.*?)"$/) do |arg1|
  last_response.should have_xpath( "//span[@id='letraIngresada']") do |span|
    span.should contain( arg1 )
  end
end

