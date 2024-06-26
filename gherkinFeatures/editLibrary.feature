

Feature: Edit my library

    Scenario: Edit book details
        Given I am in my personal library
        When I click the edit button for a book
        Then I am directed to the edit page
        And I should be able to update the following details for the book:
          | Detail      | Description/ Limits           |
          | Title       | Must be 30 characters or less |
          | Category    | One of the given categories   |
          | Author      | Must be 30 characters or less |
          | Description | Must be 500 characters or less|
          | Photos      | Maximum of 10, Minimum of 2   |
          | Cover photo | One of the uploaded photos    |
        And I should be able to confirm changes 
        And I should see the updated book in my library

    Scenario: Delete book
        Given I am editing a book 
        When I click the delete button
        Then I should see a message saying "Book deleted successfully" 
        And I should no longer see the book in my library

    Scenario: Add a new book
        Given I am in my personal library
        When I click to add a new book
        Then I am directed to the upload page
        And I should be prompted to enter the following details for the new book:
          | Detail      | Description/ Limits           |
          | Title       | Must be 30 characters or less |
          | Category    | One of the given categories   |
          | Author      | Must be 30 characters or less |
          | Description | Must be 500 characters or less|
          | Photos      | Maximum of 10, Minimum of 2   |
          | Cover photo | One of the uploaded photos    |
        And I should be able to upload the book
        And I should see the uploaded book in my library

    Scenario: Upload incorrect number of photos
        Given I am editing a book
        When I attempt to upload <num_photos> photos
        Then I should see a message saying "Book can't be uploaded. Try again uploading 2-10 photos of the book"
        And I should be redirected to the edit mode of the book

        Examples:
        | num_photos |
        | 0          |
        | 1          |
        | 11         |

    Scenario: Missing book details
        Given I am editing a book
        When I attempt to upload the book without providing all essential details
        Then I should see a message saying "Book can't be uploaded. Try again adding all the essential details"
        And I should be redirected to the edit mode of the book

    Scenario: Upload incorrect image file type
        Given I am editing a book
        When I attempt to upload a file that is not a valid <image_type> 
        Then I should see a message saying "Book can't be uploaded. Try again uploading a valid image type"
        And I should be redirected to the edit mode of the book

        Examples:
            | image_type | 
            | jpeg       |
            | png        |
