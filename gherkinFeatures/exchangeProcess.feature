
Feature:exchange process 
    Scenario:open chat
    Given that there is a 'match'
    When I and my 'book fella' give the confirmation to continue on chat 
    Then I should be able to communicate on chat that pops up
    And I should be able to send a message
    And I should be able to see the message
    And I should be able to confirm the exchange
    And I should be able to cancel the exchange
    Scenario:confirm the exchange
    Given that I am on chat 
    When I and my 'book fella' click on the confirm button saying "exchange completed"
    Then the chat will be closed
    And the system deletes the books
    Scenario:cancel the exchange
    Scenario: