
Feature: Rating notification

    Scenario: Notification to leave a rating
        Given that I am logged-in in the application 
        When exchange process is completed or canceled
        Then I should see a notification to rate my "book fella"
        And I should be able to click on the notification
        And I should be able to rate him