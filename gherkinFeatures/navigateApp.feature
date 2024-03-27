
Feature: Navigate to the application

    Scenario: Navigate to books
    Given that I am logged in to the application
    When I click on a 'book item'
    Then I should be directed to the 'books page'
    And I should be able to see the <details> of the book
    And I should be able to like the book

    Examples:
        | details     | values                                   |
        | title       | "The science of interstellar"            |
        | category    | Science fiction                          |
        | author      | Kip Thorne                               |
        | description | fantastic voyage beyond our solar system |
        | photos      |                                          |
        | cover photo |                                          |
        | location    |                                          |

    Scenario: Navigate to libaries
    Given that I am at a user's profile 
    When I click on the library
    Then I should be directed to the library's page
    And I should be able to see the library's books
    And I should be able to navigate to books

    Scenario: Navigate to users
    Given that I am logged in to the application
    When I click on a user 
    Then I should be directed to the user's profile
    And I should be able to see their library,ratings and profile <details> 

    Examples:
        | details       | values                                  |
        | profile photo | profile                                 |
        | username      | booklover123                            |
        | location      | Thessaloniki                            |
        | bio           | Passionate book lover from Thessaloniki |
        