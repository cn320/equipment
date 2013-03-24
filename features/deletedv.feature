Feature: Delete Device
   As a Teacher a
   So that I can delete some device
   I want to delete some device
 Background: devioces in database

   Given the following devices exist:
   | code | name      | remain |
   | 300  | Resister  | 40     |


 Scenario:edit Device
   Given I am on the login page
   When I fill in "id" with "admin"
   And I fill in "password" with "root"
   And I press "Login"
   Then I am on the adddevice page
   When I follow "Show Devices"
   Then I am on the showdevices page
   When I follow "Delete"
   Then I am on the showdevices page
   And I should not see "R100"