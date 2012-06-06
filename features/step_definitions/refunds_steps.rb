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

Then /^use should be able to search through email address for "(.*)"$/ do |email|
  @email = email
 $web_robot.find(:xpath, '//form/table/tbody/tr/td[2]/input').set @email
end
#Then /^use should be able to search through email address as "([^"]*)"$/ do |email|
#  $web_robot.find(:xpath, '//form/table/tbody/tr/td[2]/input')
#end

Then /^user should be able to click on Find button$/ do
  $web_robot.find(:xpath, '//div[3]/form/input[1]').click
end

Then /^user should see the exact email address "([^"]*)"$/ do |expected_email|
string = "#{expected_email}"
puts string
puts "Matches"
 $web_robot.find(:xpath, '//div[4]/table[2]/tbody/tr/td[3]/a').text.should eql  string
end


Then /^user should be able to click on view purchases icon$/ do
  $web_robot.find(:xpath, '//div[4]/table[2]/tbody/tr/td[5]/a[3]/img').click
end

And /^user should be able to click on edit purchase details$/ do
 $web_robot.find(:xpath, '//div[4]/table/tbody/tr[4]/td[9]/a[1]/img').click  # user can change the xpath for list of options by tr[1], tr[2] or tr[3]
end

Then /^user should able to click on show refund form link$/ do
$web_robot.find(:xpath, '//tr[16]/td/div/a').click
end

And /^user should be able to click on refund checkbox$/ do
  $web_robot.find(:xpath, '//input[@class=\'IsSelectedForRefund\']').click
end

And /^user should able to select the reason for refund as "(.*)"$/ do |reason|
  $web_robot.select(reason, {:from=> "RefundReason"} )
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
 @refund_code = $web_robot.find(:xpath, '//form/table/tbody/tr[16]/td/table/tbody/tr/td[6]/a').text
  end

When /^user SignIn and enter the SignIn details$/ do
  $web_robot.find(:xpath, '//div/div[2]/div/div[5]/a[1]').click
  $web_robot.find(:xpath, '//*[@id="EmailAddress"]').set "kanwal.singh@scoopon.com.au"
  $web_robot.find(:xpath, '//*[@id="Password"]').set "manoobilli"
  $web_robot.find(:xpath, '//form/div[2]/input').click
end

When /^user should be able to click on my stuff link$/ do
  $web_robot.find(:xpath, '//div/div[2]/div/div[5]/div/ul/li/a').click
end

Then /^user should be able to click on my gift certificates tab$/ do
  $web_robot.find(:xpath, '//div/div[3]/div/div/div/ul/li[4]/a').click
end
When /^user should be able to redeem gift certificate$/ do
  $web_robot.find(:xpath, '//*[@id="Redeem"]').click
  $web_robot.find(:xpath, '//div[4]/div/div/div/div/input[@id=\'GiftCode\']').set @refund_code
   $web_robot.find(:xpath, '//div[4]/div[2]/img[1]').click
end

When /^"(.*)" should be matched after redeemed$/ do |arg|
   $web_robot.find.last(:xpath, '//div/div[3]/div/div/div/div/table/tbody').text.should eql @refund_code
  If arg
end
