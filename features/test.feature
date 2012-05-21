Feature: Select the cities from mega menu
Scenario: Select cities from mega menu and sign in
Given http://ci01.sc.pn
Then the user should be able to click on more cities
Then user should be able to see the mega menu box
Then user should be able to choose city from mega menu
And user user should be able to sign in