
Feature: edit my library
    Scenario: edit book
        Given that I am in my personal library
        When I click edit on a book
        Then I am directed in the edit page
        And I should be prompted to update details (title,category,author,description,photos,cover photo) of the book
        And  I should see the updated book in my library
    Scenario: delete book
        Given that I am in edit mode of a book
        When I click to delete the book
        Then I should see a message saying "Book deleted successfully"
        And I should no longer see the book in my library
    Scenario: add/upload book
        Given that I am in my personal library
        When I click to add a new book
        Then I am directed in the upload page
        And I should be prompted to enter title,author,category,description,photos,cover photo
        And I should be able to click upload
        And  I should see the uploaded book in my library
    Scenario: upload wrong number of photos
        Given that I am in edit mode of book
        And that I upload 0-1 or 10+ photos
        When I upload the book
        Then I should see a message saying "Book can't be uploaded. Upload 2-10 photos of the book"
        And I should be redirected in the edit mode of a book
        And I should be prompted to try again
    Scenario: details are missing
        Given that I am in edit mode of book
        And that I dont add a title,category,author,photos,cover photo 
        When I upload the book
        Then I should see a message saying "Book can't be uploaded. Add all the essential details"
        And I should be redirected in the edit mode of a book
        And I should be prompted to try again
    Scenario: upload wrong image file type 
        Given that I am in the edit mode of book
        And that I upload a file that is not correct image type (jpeg,png) 
        When I upload the book
        Then I should see a message saying "Book can't be uploaded. Upload a valid image type"
        And I should be redirected in the edit mode of book
        And I should be prompted to try again