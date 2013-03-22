Feature: Borrow a device
   As a Teacher and Student
   So that I can borrow some device
   I want to get the information to borrowing device

Background: devioces in database

   Given the following devices exist:
   | code | name      | remain |
   | 300  | Resister  | 40     |
   | 340  | arduino   | 20     |



Scenario:Borrow Device
   Given I am on the borrower page
   When I fill in "stdidd" with "5310611115"
   And I fill in "stdnamee" with "nook"
   And I fill in "iddv" with "300"
   And I fill in "namedv" with "Resister"
   And I fill in "dvamount" with "10"
   And I press "save"
   Then I should be on the borrower page
   And I should see "Success"

Scenario: Don't have device can't be borrowed
   Given I am on the borrower page
   When I fill in "stdidd" with "5310611115"
   And I fill in "stdnamee" with "nook"
   And I fill in "iddv" with "100"
   And I fill in "namedv" with "Capacitor"
   And I fill in "dvamount" with "10"
   And I press "save"
   Then I should be on the borrower page
   And I should see "Fail"
