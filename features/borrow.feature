<<<<<<< HEAD
<<<<<<< HEAD

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


=======
=======
>>>>>>> f1f481f1ceceb723ed1de0ecc117fcc33952bda4
Feature: display list of movies filtered by MPAA rating
 
  As a concerned parent
  So that I can quickly browse movies appropriate for my family
  I want to see movies matching only certain MPAA ratings

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  And  I am on the RottenPotatoes home page
  
Scenario: restrict to movies with 'PG' or 'R' ratings
  # enter step(s) to check the 'PG' and 'R' checkboxes
  # enter step(s) to uncheck all other checkboxes
  # enter step to "submit" the search form on the homepage
  # enter step(s) to ensure that PG and R movies are visible
  # enter step(s) to ensure that other movies are not visible

Scenario: all ratings selected
  # see assignment
<<<<<<< HEAD
>>>>>>> f1f481f1ceceb723ed1de0ecc117fcc33952bda4
=======
>>>>>>> f1f481f1ceceb723ed1de0ecc117fcc33952bda4
