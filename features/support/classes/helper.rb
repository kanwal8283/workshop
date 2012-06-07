require 'capybara/dsl'
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'http://uat01.sc.pn'
Capybara.default_wait_time = 5

class WebRobot
  include Capybara::DSL
 # this is the function technically its called method
  def set_wait_time time
    Capybara.default_wait_time = time
  end
end
