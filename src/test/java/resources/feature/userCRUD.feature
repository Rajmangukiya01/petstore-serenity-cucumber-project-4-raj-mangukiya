Feature:  User Data Creating in Petstore application
  As a user I want to test User Application

  Scenario Outline: CRUD Test
    Given Pet store Application running
    When I create new user by providing the information id "<id>" username "<username>" firstName"<firstName>" lastName "<lastName>"  email "<email>" password"<password>" phone "<phone>"userStatus "<userStatus>"
    Then I get that created user  with "<username>" is created
    And I update the user with information  id "<id>" username "<username>" firstName"<firstName>" lastName "<lastName>"  email "<email>" password"<password>" phone "<phone>"userStatus "<userStatus>"
    And I verify user updated with "<username>" successfully
    And I delete created user with username "<username>"
    Then The user deleted successfully

    Examples:
      | id | username | firstName | lastName | email           | password | phone       | userStatus |
      | 01 | abc01    | abc       | cba      | abc01@gmail.com | abc123   | 02103245683 | 1          |
      | 02 | def02    | def       | fed      | def02@gmail.com | abc321   | 02031456823 | 2          |
      | 03 | xyz02    | xyz       | zyx      | xyz03@gmail.com | xyz123   | 02034589766 | 3          |