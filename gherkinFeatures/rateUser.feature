
Feature: Rate user

    Scenario: Rate user
        Given that I am in the profile page of a "book fella"
        When I click to rate the "book fella"
        Then I should see be able to rate the "book fella" on a scale of 1-5 
        And I should be able to leave a comment on my rating
        And I should be able to submit my rating 
        And I should be able to see the my rating  