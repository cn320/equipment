Feature: Search a borrower information
  As a Teacher and Student
  So that I can search the information of borrower
  I want to get the information of borrower

Scenario: add Device and add Borrow and find student with studentID
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
  Then I am on the home page
  When I fill in "idstd" with "5310611115"
  And I press "Search"
  Then I should be on the search page
 

Scenario: can't find equipment with studentID
  Given I am on the home page
  When I fill in "idstd" with "5310611321"
  And I press "Search"
  Then I should be on the home page
  And I should see "Fail"
