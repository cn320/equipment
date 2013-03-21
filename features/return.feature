Feature: Return a device
    As a Teacher and Student
    So that I can return device
    I want to return device

Background: devioces in database

   Given the following devices exist:
   | code | name      | remain |
   | 300  | Resister  | 40     |
   | 340  | arduino   | 20     |

Scenario: Borrow Device and Return Device to existing equipment
   Given I am on the borrower page
   When I fill in "stdidd" with "5310611115"
   And I fill in "stdnamee" with "nook"
   And I fill in "iddv" with "300"
   And I fill in "namedv" with "Resister"
   And I fill in "dvamount" with "10"
   And I press "save"
   Then I should be on the borrower page
   And I should see "Success"
   Then I am on the recurring page
   When I fill in "idstd" with "5310611115"
   And I press "Search"
   Then I should be on the return page
   When I follow "Recurring"
   Then I should be on the recurring page
   And I should see "Success"

Scenario: can't find student return device with studentID
  Given I am on the recurring page
  When I fill in "idstd" with "5310611321"
  And I press "Search"
  Then I should be on the recurring page
  And I should see "Fail"