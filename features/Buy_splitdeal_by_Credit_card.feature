Feature: Buy a Split Deal for a friend (Existing user not logged in)
  Scenario: Buy Split Deal for a friend when user not logged In
    Given http://ci01.sc.pn
    Then the user should be able to click on more cities
    Then user should be able to see the mega menu box
    Then user should be able to choose city from mega menu
    Then the user should be able to click on view now button
    Then user should be able to click on Buy Now button
    Then Pop-Up window should come up
    And user able to choose from the pop-up options
    Then User should be able to click Sign In
    Then user should be able to enter email and password
    Then user should be able to enter the credit card details
    And user should be able to click on Get Scoopon Button


    Scenario: New example
      Given I go to http://ci01.sc.pn for "sydney"
      Then I should be able to click on more cities
      Then user should be able to see the mega menu box
      Then user should be able to choose newcastle from mega menu
      Then the user should be able to click on #ViewNowHolder
      Then user should be able to click on Buy Now button
      Then Pop-Up window should come up
      And user able to choose from the pop-up options
      Then super should be able to select the quantity
      Then User should be able to click Sign In
      Then user should be able to enter email and password
      Then user should be able to enter the credit card details
      And user should be able to click on Get Scoopon Button
