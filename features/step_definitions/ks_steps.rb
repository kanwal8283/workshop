require 'capybara/dsl'

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'http://ci01.sc.pn'

class WebRobot
  include Capybara::DSL
end



Given /http:\/\/ci01.sc\.pn\/NewCastle/ do
  $web_robot = WebRobot.new

  $web_robot.visit("//NewCastle")
end


Given /the user should be able to click on view now button/ do
  $web_robot.find('#AlmostGoneHolder').click

end

Given /user should be able to click on Buy Now button/ do
  $web_robot.find('#BuyNowButtonClick').click

end

Given /Pop-Up window should come up/ do
  $web_robot.find('Title').text
end

Given /user able to choose from the pop-up options/ do
  $web_robot.find(:xpath, '//Div[@class=\'DealOptions\']/table[3]/tbody/tr/td[@class=\'OptionName\']/a').click
end

Given /User should be able to click Sign In/ do
  $web_robot.find('#SignInButtonPurchase').click

end

Given /user should be able to enter email and password/    do
  $web_robot.find(:xpath, '//div[@id=\'SignInForm\']/input[@class=\'SignInEmailAddress\']').set ('kanwal.singh@scoopon.com.au')
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

end

Given /user should be able to click on Get Scoopon Button/ do
     $web_robot.find(:xpath,'//input[@id=\'SubmitButton1\']').click
end
