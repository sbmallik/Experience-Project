Feature: Verifying Experience home footer.
Background:
When I visit the Experience home page 

@ExpFooterFrontNavigation 
Scenario Outline: Verifying front navigation.
	When I click on beach <front>
		Then beach <frontdescription> should display

	Examples:	
		|front                   |frontdescription|                      
		|Find My Beach Experience|FIND YOUR BEACH EXPERIENCE|
		|Best Beaches            |BEST BEACHES              |
		|Beach Photos            |PHOTO GALLERIES           |

@ExpFooterFrontNavigation1 	
Scenario Outline: Verifying front1 navigation.
	When I click on beach1 <front1>
		Then beach1 <frontdescription1> should display	
	Examples:	
		|front1                   |frontdescription1|         
		|FREE BEACH TRIP QUOTES  |HOW TRIPOLOGY WORKS      |


@ExpFooterDestinationNavigation
Scenario Outline: Verifying destination navigation.
	When I click on top <destination>
		Then destination <description> should display

	Examples:
		|destination |description|
		|California  |California |
		|Florida     |Florida 	 |
		|Delaware    |Delaware   |
		|Mexico      |Mexico     |



@ExpSiteNavigation 
Scenario Outline: Verifying site navigation.
	When I click on any <site>
		Then The experience <sitedescription> should display

	Examples:	
		|site                    |sitedescription|                      
		|Experience America|Find your AMERICA Experience|
		|Experience Caribbean|Find your CARIBBEAN Experience|
		|Experience Cruise   |Find your EXPERIENCE CRUISE| 
		|Experience Food and Wine|Find your FOOD AND WINE Experience|
		|Experience Las Vegas|Find your LAS VEGAS Experience|
		|Experience South|Find your SOUTH Experience|
		|Experience Ski|Find your SKI Experience|

@ExpStaticPageNavigation 
Scenario Outline: Verifying static page navigation.
	When I click static <page>
		Then The static <pagedescription> should display

	Examples:
	    |page |pagedescription|
	    |About Us|About Us|		
	    |Contact Us|General Inquiries|

@ExpStaticPageNavigation1
Scenario Outline: Verifying static1 page navigation.
	When I click static1 <page1>
		Then The static1 <pagedescription1> should display

	Examples:   
	    |page1 |pagedescription1| 
	    |Terms Of Service|USATODAY.com Terms of Service|
	    |PRIVACY NOTICE / YOUR CALIFORNIA PRIVACY RIGHTS|USATODAY.com Privacy Notice|
	    |Ad Choices| Data Collected in Connection with Ad Serving and Targeting|
		















