Given /user user should be able to sign in/ do
  $web_robot.find(:xpath, '//a[@class=\'SignIn\']').click
  $web_robot.find(:xpath, '//input[@id=\'EmailAddress\']').set ('kanwal.singh@scoopon.com.au')
  $web_robot.find(:xpath, '//input[@id=\'Password\']').set ('manoobilli')
  $web_robot.find(:xpath, '//div[@class=\'FormButtons\']/input[@type=\'image\']').click
  end