Feature: edit Device
   As a Teacher a
   So that I can edit some device
   I want to edit some device
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
   When I follow "Edit"
   Then I am on the edit page
   When I fill in "DeviceName" with "R100"
   And I press "Update Device"
   Then I am on the showdevices page
   And I should see "R100"