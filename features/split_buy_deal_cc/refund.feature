Feature: Normal refund after purchase via credit card
  Scenario: refund with existing user and has purchased a deal
    Given user go to http://ci03.sc.pn for "admin"
    Then user should be able to log in
    When user should be able to click on accounts link
    Then use should be able to search through email address
    Then user should be able to click on Find button
#    Then user should see the exact email address "singh@gmail.com"
    Then user should be able to click on view purchases icon
    And user should be able to click on edit purchase details
    Then user should able to click on show refund form link
    And user should be able to click on refund checkbox
    And user should able to select the reason for refund
    And user should be able to type RefundAdminName
    Then user should be able to click on process refund button
    Then user should be able to verify the refund reason "F - Goodwill"
    And user should be able to copy the GC code
