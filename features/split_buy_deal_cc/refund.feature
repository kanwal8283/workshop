Feature: Normal refund after purchase via credit card
  Scenario: refund with existing user and has purchased a deal
    Given user go to http://ci03.sc.pn for "admin"
    Then user should be able to log in
    When user should be able to click on accounts link
    Then use should be able to search through email address for "kanwal.singh@scoopon.com.au"
    Then user should be able to click on Find button
   Then user should see the exact email address "kanwal.singh@scoopon.com.au"
    Then user should be able to click on view purchases icon
    And user should be able to click on edit purchase details
    Then user should able to click on show refund form link
    And user should be able to click on refund checkbox
    And user should able to select the reason for refund as "F - Goodwill"
    And user should be able to type RefundAdminName
    Then user should be able to click on process refund button
    Then user should be able to verify the refund reason "F - Goodwill"
    And user should be able to copy the GC code
    Then user go to http://ci03.sc.pn for "Melbourne"
    And user SignIn and enter the SignIn details
    Then user should be able to click on my gift certificates tab
    And "GC Code" should be matched after redeemed