Given /^user go to http:\/\/ci03.sc.pn for "(.*)"$/ do |admin|
  $web_robot = WebRobot.new
  $web_robot.visit("/" + admin)
end
Then /^user should be able to log in$/ do
  $web_robot.find(:xpath, '//form/table/tbody/tr/td/input').set ('singh@gmail.com')
  $web_robot.find(:xpath, '//form/table/tbody/tr[2]/td/input').set ('manoobilli')
  $web_robot.find(:xpath, '//form/div/input').click
end

When /^user should be able to click on accounts link$/ do
$web_robot.find(:xpath, '//div/ul/li[8]/a').click
end
Then /^use should be able to search through email address$/ do
$web_robot.find(:xpath, '//form/table/tbody/tr/td[2]/input').set "kanwal.singh@scoopon.com.au"
end
#Then /^use should be able to search through email address as "([^"]*)"$/ do |email|
#  $web_robot.find(:xpath, '//form/table/tbody/tr/td[2]/input')
#end

Then /^user should be able to click on Find button$/ do
  $web_robot.find(:xpath, '//div[3]/form/input[1]').click
end

#Then /^user should see the exact email address "(.*)"$/ do |arg|
# $web_robot.find(:xpath, '//div[4]/table[2]/tbody/tr/td[3]/a').should eql arg
#end
Then /^user should be able to click on view purchases icon$/ do
  $web_robot.find(:xpath, '//div[4]/table[2]/tbody/tr/td[5]/a[3]/img').click
end

And /^user should be able to click on edit purchase details$/ do
 $web_robot.find(:xpath, '//div[4]/table/tbody/tr[22]/td[9]/a[1]/img').click  # user can change the xpath for list of options by tr[1], tr[2] or tr[3]
end

Then /^user should able to click on show refund form link$/ do
$web_robot.find(:xpath, '//tr[16]/td/div/a').click
end

And /^user should be able to click on refund checkbox$/ do
  $web_robot.find(:xpath, '//input[@class=\'IsSelectedForRefund\']').click
end

And /^user should able to select the reason for refund$/ do
  $web_robot.select("F - Goodwill", {:from=> "RefundReason"} )
 end
And /^user should be able to type RefundAdminName$/ do
  $web_robot.find(:xpath, '//input[@name=\'RefundAdminName\']').set "testing"
end

Then /^user should be able to click on process refund button$/ do
  $web_robot.find(:xpath, '//input[@value=\'Process Refund\']').click
end

Then /^user should be able to verify the refund reason "([^"]*)"$/ do |arg|
$web_robot.has_xpath?("//form/table/tbody/tr[16]/td/table/tbody/tr/td[5]/span").should eql true
  end
When /^user should be able to copy the GC code$/ do
 $web_robot.text(:xpath, '//form/table/tbody/tr[16]/td/table/tbody/tr/td[6]/a').set
  end

