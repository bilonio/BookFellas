
Feature: send notification
    Scenario:  like notification
        Given that I am logged-in in the application 
        When someone likes a book of mine
        Then I should see a notification
        And I should be able to click on the notification
        And i should be able to see the book that was liked
        And i should be able to see who liked it  
        And i should be able to click on the user who liked it
    Scenario:  notification to leave a rating
        Given that I am logged-in in the application 
        When exchange process is completed or canceled
        Then I should see a notification to rate my "book fella"
        And I should be able to click on the notification
        And I should be able to rate him
    Scenario: see rating notification 
        Given that I am logged-in in the application 
        When a "book fella" rates me
        Then I should see a notification
        And I should be able to click on the notification
        And I should be able to see the rating
    Scenario: match notification
        Given that I am logged-in in the application 
        When someone matches with me 
        Then I should see a notification saying "There is a match! Do you want to proceed with exchange process?"
        And I should be able to click on the notification
        And I should be able to see the user who matched with me
        And i should be able to see the book that was matched
        And I should be able to continue on chat 