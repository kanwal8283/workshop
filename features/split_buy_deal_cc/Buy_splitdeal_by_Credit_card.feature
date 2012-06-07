Feature: Buy a Split Deal for a friend (Existing user not logged in)
 Scenario: Buy Split Deal for a friend when user not logged In
      Given I go to http://uat01.sc.pn for "Goldcoast"
      Then I should be able to click on more cities
      Then user should be able to see the mega menu box
      Then user should be able to choose goldcoast from mega menu
      Then the user should be able to click on #ViewNowHolder
      Then user should be able to click on Buy Now button
      Then Pop-Up window should come up
      And user able to choose from the pop-up options
      Then super should be able to select the quantity
      Then User should be able to click Sign In
      Then user should be able to enter email and password
      Then user should be able to enter the credit card details
      And user should be able to click on Get Scoopon Button
   Then the page should display "Success! Enjoy your Scoopon!"

  Scenario: refund with existing user and has purchased a deal
    Given user go to http://uat01.sc.pn for "admin"
    Then user should be able to log in
    When user should be able to click on accounts link
    Then use should be able to search through email address for "kanwal.singh@scoopon.com.au"
    Then user should be able to click on Find button
    Then user should see the exact email address "kanwal.singh@scoopon.com.au"
    Then user should be able to click on view purchases icon
    And user should be able to click on edit purchase details
    Then user should able to click on show refund form link
    And user should be able to click on refund checkbox
    And user should able to select the reason for refund as "R - Deal Provider Not Honouring as Advertised - Scoopon unused"
    And user should be able to type RefundAdminName
    Then user should be able to click on process refund button
    Then user should be able to verify the refund reason "R - Deal Provider Not Honouring as Advertised - Scoopon unused"
    And user should be able to copy the GC code
    Then user go to http://uat01.sc.pn for "Goldcoast"
#    And user SignIn and enter the SignIn details
    And user should be able to click on my stuff link
    Then user should be able to click on my gift certificates tab
    And user should be able to redeem gift certificate
    And "GC Code" should be matched after redeemed