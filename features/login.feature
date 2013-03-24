Feature: login add Device
   As a Teacher a
   So that I can add some device
   I want to get the information to device Given the following devices |
 
Scenario:login and Add Device
   Given I am on the login page
   When I fill in "id" with "admin"
   And I fill in "password" with "root"
   And I press "Login"
   Then I am on the adddevice page
   When I fill in "iddv" with "300"
   And I fill in "dvname" with "Resister"
   And I fill in "dvremain" with "40"
   And I press "save"
   Then I am on the adddevice page
   And I should see "Success"
