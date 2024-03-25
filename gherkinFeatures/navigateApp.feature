
Feature:navigate to the application
    Scenario: navigate to books
    Given that I am logged in to the application
    When I click on a 'book item'
    Then I should be directed to the 'books page'
    And I should be able to see the details (title, category, author, description, photos, cover photo, location) of the book
    And I should be able to like the book  
    Scenario:navigate to libaries
    Given that I am at a user's profile 
    When I click on the library
    Then I should be directed to the library's page
    And I should be able to see the libary's books
    And I should be able to navigate to books
    Scenario:navigate to users
    Given that I am logged in to the application
    When I click on a user 
    Then I should be directed to the user's profile
    And I should be able to see their library,ratings and profile details (username, location, bio, profile photo)