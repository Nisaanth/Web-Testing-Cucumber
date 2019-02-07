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

  # Scenario: Inputting incorrect right username with incorrect password and credentials shows an error
  #   Given I access the bbc login page
  #   And I input right username details
  #   And I input incorrect password details
  #   When I try to login
  #   Then I receive an error for password does not match

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


#when you run cucumber it looks for a features folder then for a support folder, it hten goes on the eht env file then sets up the enironement, it then it looks at the hooks and then it goes for the features and then reads the features for us, picks up the features scenario, it sees a given, then grabs it as a string, then it looks for s atep defitnion with exatly the sam estring as that using regex, if it cannot find one it iwll output t into the terminal. if it cannt find the string it does to create the code block for you. cucumber has read that feature file, if it cannot find the string it creates on efor you in the console log or terminal.

