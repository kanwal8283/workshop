Given /http:\/\/ci01.sc.pn/ do
  $web_robot = WebRobot.new
  $web_robot.visit("/")
end
Given /the user should be able to click on more cities/ do
  $web_robot.find(:xpath,'//a[@id=\'AllLocationsButton\']').click
end

Given /user should be able to see the mega menu box/ do
  $web_robot.find(:xpath,'//div[@id=\'box_locations_slide\']').text
end
Given /user should be able to choose city from mega menu/ do
  $web_robot.find(:xpath,'//a[@href=\'/goldcoast\']').click
end

Given /user user should be able to sign in/ do
  $web_robot.find(:xpath,'//a[@class=\'SignIn\']').click
  $web_robot.find(:xpath, '//input[@id=\'EmailAddress\']').set ('kanwal.singh@scoopon.com.au')
  $web_robot.find(:xpath, '//input[@id=\'Password\']').set ('manoobilli')
  $web_robot.find(:xpath, '//div[@class=\'FormButtons\']/input[@type=\'image\']').click
  end