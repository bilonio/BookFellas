
Feature: Exchange process notifications
    Scenario:  Like notification
        Given that I am logged-in in the application 
        When someone likes a book of mine
        Then I should see a notification
        And I should be able to click on the notification
        And I should be able to see the book that was liked
        And I should be able to see who liked it  
        And I should be able to click on the user who liked it

    Scenario: Match notification
        Given that I am logged-in in the application 
        When someone matches with me 
        Then I should see a notification saying "There is a match! Do you want to proceed with exchange process?"
        And I should be able to click on the notification
        And I should be able to see the user who matched with me
        And I should be able to see the book that was matched
        And I should be able to continue on chat 

