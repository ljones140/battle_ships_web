Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I press "New Game"
    Then I should see "What's your name?"
    When I fill in "playername" with "Name"
    And I press "submit"
    Then I should see "Game start"
    And I should see "playername"
