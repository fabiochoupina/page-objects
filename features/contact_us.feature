Feature: Contact us
    As a tester
    I want to send a message
    To contact Wellington Testers

    Scenario: User sends the message
    
        Given that I'm on the home page
        And my name is "Robert" and my email is "robert@email.com"
        When I send the following message "I'd like to be part of Wellington Testers"
        Then the message is sent successfully
   
    Scenario Outline: User can't send the message

        Given that I'm on the home page
        And my name is "<name>" and my email is "<email>"
        When I send the following message "<message>"
        Then the message is not sent successfully and the "<alert>" is displayed

    Examples:
    | name   | email            | message                                   | alert                               |
    |        | robert@gmail.com | I'd like to be part of Wellington Testers | Please fill in this required field  |
    | Robert |                  | I'd like to be part of Wellington Testers | Please enter a valid email address. |
    | Robert | robert@gmail.com |                                           | Please fill in this required field  |