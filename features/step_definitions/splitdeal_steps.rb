Given /^I go to http:\/\/ci03.sc.pn for "(.*)"$/ do |city|
  $web_robot = WebRobot.new
  $web_robot.visit("/" + city)
end

Given /I should be able to click on more cities/ do
  $web_robot.find(:xpath,'//a[@id=\'AllLocationsButton\']').click
end

Given /user should be able to see the mega menu box/ do
  $web_robot.find(:xpath,'//div[@id=\'box_locations_slide\']').text
end
Given /user should be able to choose (.*) from mega menu/ do |city|
  $web_robot.find(:xpath,"//a[@href='/#{city}']").click
end

Given /the user should be able to click on (.*)/ do |holder|
  string = "#{holder}"
  puts string
  puts "-------------"
  $web_robot.find(string).click

end

Given /user should be able to click on Buy Now button/ do
  $web_robot.find('#BuyNowButtonClick').click

end

Given /Pop-Up window should come up/ do
  $web_robot.find('Title').text
end

Given /user able to choose from the pop-up options/ do
  $web_robot.find(:xpath, '//Div[@class=\'DealOptions\']/table[1]/tbody/tr/td[@class=\'OptionName\']/a').click
end

Given /User should be able to click Sign In/ do
  $web_robot.find('#SignInButtonPurchase').click

end

Then /super should be able to select the quantity/ do
  $web_robot.select("4" ,{:from => "Quantity"})
end

Given /user should be able to enter email and password/    do
  $web_robot.find(:xpath, '//div[@id=\'SignInForm\']/input[@class=\'SignInEmailAddress\']').set ('ksingh1314@gmail.com')
  $web_robot.find(:xpath, '//div[@id=\'SignInForm\']/input[@class=\'SignInPassword\']').set ('manoobilli')
  $web_robot.find(:xpath, '//div[@id=\'SignInForm\']/input[@class=\'SignInButton\']').click
end

Given /user should be able to enter the credit card details/ do

  $web_robot.find(:xpath, '//input[@id=\'paymentMethodCreditCard\']').click
  $web_robot.find(:xpath, '//input[@id=\'CreditCardName\']').set('Adam')
  $web_robot.find(:xpath, '//input[@id=\'CreditCardNumber\']').set('4444333322221111')
  $web_robot.select("4" ,{:from => "CreditCardExpirationMonth"})
  $web_robot.select("2013" ,{:from => "CreditCardExpirationYear"})
  $web_robot.find(:xpath, '//input[@id=\'CreditCardSecurityCode\']').set('123')
     sleep 2
end

Given /user should be able to click on Get Scoopon Button/ do
  $web_robot.find(:xpath,'//input[@id=\'SubmitButton1\']').click
end