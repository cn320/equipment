Feature: Borrow a device
   As a Teacher and Student
   So that I can borrow some device
   I want to get the information to borrowing device

Scenario: add studentID to existing equipment
   Given I am on the borrower page
   When I fill in "stdidd" with "5310611115"
   And I fill in "stdnamee" with "nook"
   And I fill in "iddv" with "300"
   And I fill in "namedv" with "Resister"
   And I press "save"
   Then I should see "Success"

