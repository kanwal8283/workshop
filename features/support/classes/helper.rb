require 'capybara/dsl'
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'http://ci03.sc.pn'

class WebRobot
  include Capybara::DSL
end
