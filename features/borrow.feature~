
Feature : Borrow a device

As a Teacher and Student
So that I can borrow some device
I want to get the information to borrowing device

Background : Startup with Homepage
  Given the following movies exist:
  | studentID | release_date | type         |
  | 5310611115| 2012-05-25   | Resistor 300 |
  | 5310611131| 2013-06-21   | Resistor 200 |
  | 5310611321| 2013-07-23   | Resistor 100 |

Scenario: add studentID to existing equipment
  Given I am on the borrower page
  When I go to the borrow page for "Resistor 300"
  And I fill in "studentID" with "5310611115"
  And I press "Borrow"
  Then the student of "Resistor 300" should be "53106111115"


