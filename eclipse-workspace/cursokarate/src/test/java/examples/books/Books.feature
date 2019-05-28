Feature: Books   

Background:
* url 'http://fakerestapi.azurewebsites.net' 

* def bookTitle = 'livro'
* def bookId = 1

Scenario:	GET Books
 
Given path '/api/Books'
When method get
Then status 200


Scenario: GET Book 1

Given path '/api/Books/1'
When method get
Then status 200
And match $ != {response.Title: '#notnull'}

* print bookTit	+ bookId
* print bookId
* print bookTitle + bookId

* print response
	
#* assert bookTitle + bookId == response.Title 
* table cats
  | name   | age |
  | 'Bob'  | 2   |
  | 'Wild' | 4   |
  | 'Nyan' | 3   |

* match cats == [{name: 'Bob', age: 2}, {name: 'Wild', age: 4}, {name: 'Nyan', age: 3}]

* table names
  | var| res   | teste |
  | 1  | 'victor'|1|
  | 2  | 'pedro' |1|
  | 3  | 'miriam'|1|
  
* match names == [{ var: 1, res: 'victor', teste: 1}, { var: 2 , res: 'pedro',teste: 1 },{var: 3, res: 'miriam', teste: 1}]	 