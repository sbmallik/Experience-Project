Feature: Verifying Experience home header.
Background:
When I visit the Experience home page 

@ExpHomeHeader 
Scenario:Verifying ExperienceLogo and HeaderItems
Given I am on the ExperienceHome page
When I click on 'UsaTodayTravel' logo
Then I should be on 'USATodayTravel' page 
When I click on browser back button
And I click on 'Experience' logo
Then I am on the ExperienceHome page 
When I select'FindMyExperience' front
Then 'FindMyExperience' front should dispaly
When I select'BestBeaches' front
Then 'BestBeaches' front should dispaly
When I select'BestPhotos' front
Then 'BestPhotos' front should dispaly
When I select'FreeBeachQuotes' front
Then 'FreeBeachQuotes' front should dispaly

@ExpTopDestination
Scenario:Verifying TopDestination dropdown
Given I am on the ExperienceHome page
When I mouse hover TopDestination
And I select any destination 
Then I should be on the destination page 



@ExpSocial
Scenario:Verifying Experience social
When I click FB icon
Then FB home page should display
When I click Twitter icon
Then Twitter home page should display
When I click Pinterest icon
Then Pinterest home page should display

@ExpSearch 
Scenario:Verifying search page 
When I click Search icon
Then Search page should display












