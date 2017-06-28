# language: en
Feature:: Show searchs
	
Scenario: Search cars

    	Given some open app
      	And I input "Gol" in search 
      	Then show searchs in Terminal
