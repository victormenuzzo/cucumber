Feature: Books   

Background:
* url 'http://fakerestapi.azurewebsites.net' 

Scenario:	GET Books

Given path '/api/Books'
When method get
Then status 200


Scenario: GET Book 1

Given path '/api/Books/1'
When method get
Then status 200