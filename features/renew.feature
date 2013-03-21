Feature: Renew a device
    As a Teacher and Student
    So that I can return device
    I want to return device

Scenario: login add Device and borrow Device and Renew timefinish borrow to existing equipment
   Given I am on the login page
   When I fill in "id" with "admin"
   And I fill in "password" with "root"
   And I press "Login"
   Then I should be on the add device page
   And I fill in "iddv" with "300"
   And I fill in "dvname" with "Resister"
   And I fill in "dvremain" with "40"
   And I press "save"
   Then I should be on the add device page
   And I should see "Success"
   Then I am on the borrower page
   When I fill in "stdidd" with "5310611115"
   And I fill in "stdnamee" with "nook"
   And I fill in "iddv" with "300"
   And I fill in "namedv" with "Resister"
   And I press "save"
   Then I should be on the borrower page
   And I should see "Success"
   Then I am on the renew page
   When I fill in "idstd" with "5310611115"
   And I press "Search"
   Then I should be on the renewdevice page
   When I follow "Renew"
   Then I should be on the renew page
   And I should see "Success"

Scenario: can't find student renew with studentID
  Given I am on the renew page
  When I fill in "idstd" with "5310611321"
  And I press "Search"
  Then I should be on the renew page
  And I should see "Fail"