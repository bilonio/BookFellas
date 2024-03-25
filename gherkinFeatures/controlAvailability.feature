
Feature: control availability
    Scenario: make the book available
    Given that I am logged in at the application 
    When  I cancel an exchange process
    Then the books should be available 
    And users should be able to like the books
    And books are removed from the 'book lists'
    Scenario: make the book unavailable
    Given that I am logged in at the application
    When  I have a 'match'
    Then the books should be unavailable
    And users should not be able to like the books
    Scenario: delete the book
    Given that I am logged in at the application
    When  I complete an exchange process
    Then the books should be deleted
    And I should not be able to see them in the application