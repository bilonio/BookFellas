   
Feature: Change Location in Settings and Observe Search Results

  Scenario: Change location in settings and observe search results
    Given that I am logged into my account
    And I am on the settings page
    When I change my location to <new_location>
    And I navigate to the home page
    And I search for a book using the search bar
    Then I should see search results relevant to <new_location>

  Examples:
    | new_location    |
    | "Thessaloniki"  |
    | "Athens"        |
    | "Kavala"        |
