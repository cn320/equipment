Feature : Search a borrower information

As a Teacher and Student
So that I can search the information of borrower
I want to get the information of borrower

Given the following movies exist:
  | studentID | release_date | type |
  | 5310611115| 2012-05-25 | Resistor 300 |
  | 5310611115| 2013-06-21 | Resistor 200 |
  | 5310611321| 2013-07-23 | Resistor 100 |

Scenario: find equipment with studentID
  Given I am on the Home page
  When I follow "Find studentID"
  Then I fill in "seach" with "5310611115"
  And I should be on the searchID page for "5310611115"
  And I should see " Resistor 300 "
  And I should see " Resistor 200 "
  But I should not see " Resistor 100”
Scenario: can't find equipment with studentID
