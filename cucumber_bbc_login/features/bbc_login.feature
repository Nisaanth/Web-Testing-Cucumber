Feature: BBC Login

  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for not finding the account

  Scenario: Inputting incorrect password and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect short password details
    When I try to login
    Then I receive an error for password too short

  Scenario: Inputting incorrect right username with incorrect password and credentials shows an error
    Given I access the bbc login page
    And I input right username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for password does not match

  Scenario: Inputting incorrect invalid username and credentials shows an error
    Given I access the bbc login page
    And I input incorrect and invalid username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for invalid username

  Scenario: Inputting password with only letters and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details with only letters
    When I try to login
    Then I receive an error for invalid password with only letters

  Scenario: Inputting password with only numbers and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details with only numbers
    When I try to login
    Then I receive an error for invalid password with only numbers

  Scenario: Inputting a too long password and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input a long password
    When I try to login
    Then I receive an error for password is too long

  Scenario: Inputting nothing in both fields and credentials shows an error
    Given I access the bbc login page
    And I input no username details
    And I input no password details
    When I try to login
    Then I receive an error that both fields are missing



