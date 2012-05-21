Feature: Buy a Split Deal for a friend (Existing user not logged in)
  Scenario: Buy Split Deal for a friend when user not logged In
    Given http://ci01.sc.pn/GoldCoast
    Then the user should be able to click on view now button
    Then user should be able to click on Buy Now button
    Then Pop-Up window should come up
    And user able to choose from the pop-up options
    Then User should be able to click Sign In
    Then user should be able to enter email and password
    Then user should be able to enter the credit card details
    And user should be able to click on Get Scoopon Button


