Feature: Search a borrower information
  As a Teacher and Student
  So that I can search the information of borrower
  I want to get the information of borrower

Background: devioces in database

   Given the following devices exist:
   | code | name      | remain |
   | 300  | Resister  | 40     |
   | 340  | arduino   | 20     |

Scenario:Borrow and find studentborrow with studentID
  Given I am on the borrower page
  When I fill in "stdidd" with "5310611115"
  And I fill in "stdnamee" with "nook"
  And I fill in "iddv" with "300"
  And I fill in "namedv" with "Resister"
  And I fill in "dvamount" with "10"
  And I press "save"
  Then I should be on the borrower page
  And I should see "Success"
  Then I am on the home page
  When I fill in "idstd" with "5310611115"
  And I press "Search"
  Then I should be on the search page
 

Scenario: can't find student  with studentID
  Given I am on the home page
  When I fill in "idstd" with "5310611321"
  And I press "Search"
  Then I should be on the home page
  And I should see "Fail"
