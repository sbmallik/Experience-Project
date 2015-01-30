
When (/^I visit the Experience home page$/) do
	visit ("http://experience.usatoday.com/beach/")

end

#Exphomeheader

Given(/^I am on the ExperienceHome page$/) do
	expect(page).to have_selector(:id,'main-carousel')

end
When(/^I click on 'UsaTodayTravel' logo$/) do
     click_link('USA TODAY TRAVEL')
end


Then(/^I should be on 'USATodayTravel' page$/) do
	expect(page).to have_selector(:id,'section_travel')
end

When (/^I click on browser back button$/) do
    page.evaluate_script('window.history.back()')
	end 

And(/^I click on 'Experience' logo$/) do
 
  find(".experience-logo").click
end 


When(/^I select'FindMyExperience' front$/) do
    page.driver.browser.manage.window.maximize
    @expected_FE =find(".nav-bar.navigation").find(".nav-find-experience").find("a")["href"] 
  find('.nav-find-experience a').click

end
Then(/^'FindMyExperience' front should dispaly$/) do
    expect(current_url).to match @expected_FE
    page.evaluate_script('window.history.back()')
end


When(/^I select'BestBeaches' front$/) do
  @expected_BB =find(".nav-bar.navigation").find(".nav-best-beaches").find("a")["href"] 
   find(".nav-bar.navigation").find(".nav-best-beaches").find("a").click
end

Then(/^'BestBeaches' front should dispaly$/) do
    expect(current_url).to match @expected_BB
    page.evaluate_script('window.history.back()')
end

When(/^I select'BestPhotos' front$/) do
  @expected_BP =find(".nav-bar.navigation").find(".nav-Beach.Photos").find("a")["href"] 
   find(".nav-bar.navigation").find(".nav-Beach.Photos").find("a").click
end

Then(/^'BestPhotos' front should dispaly$/) do
   expect(current_url).to match @expected_BP
    page.evaluate_script('window.history.back()')
end

When(/^I select'FreeBeachQuotes' front$/) do
  @expected_FQ =find(".nav-bar.navigation").find(".nav-connect").find("a")["href"] 
   find(".nav-bar.navigation").find(".nav-connect").find("a").click
end

Then(/^'FreeBeachQuotes' front should dispaly$/) do
  first_window= page.driver.browser.window_handles.first

  new_window = page.driver.browser.window_handles.last

  page.driver.browser.switch_to.window new_window
  expect(current_url).to match @expected_FQ
  page.driver.browser.close

   page.driver.browser.switch_to.window first_window
end
#ExpTopdestination

When(/^I mouse hover TopDestination$/) do
  page.driver.browser.manage.window.maximize
  find(".nav-top-beaches.down-arrow", :text => "TOP DESTINATIONS").hover
end

When(/^I select any destination$/) do
  @expected_DES =first(".span2").find("a")["href"] 
  first(".span2").find("a").click
end

Then(/^I should be on the destination page$/) do
  expect(current_url).to match @expected_DES
  page.evaluate_script('window.history.back()')
end


#Expsocial
When(/^I click FB icon$/) do
  @expected_FB =first(".social-media-icon").find("a")["href"] 
  first(".social-nav").find(".icon.icon-facebook").click
  end

Then(/^FB home page should display$/) do

  first_window= page.driver.browser.window_handles.first

  new_window = page.driver.browser.window_handles.last

  page.driver.browser.switch_to.window new_window

  expect(current_url).to match @expected_FB
   page.driver.browser.close

   page.driver.browser.switch_to.window first_window
end

When(/^I click Twitter icon$/) do
  @allelements=all(".social-media-icon")
  @expected_TW =@allelements[1].find("a")["href"]
  first(".social-nav").find(".icon.icon-twitter").click
end

Then(/^Twitter home page should display$/) do
  first_window= page.driver.browser.window_handles.first

  new_window = page.driver.browser.window_handles.last

  page.driver.browser.switch_to.window new_window

  expect("https://www.twitter.com/usatodaytravel").to match @expected_TW
   page.driver.browser.close
page.driver.browser.switch_to.window first_window
end

When(/^I click Pinterest icon$/) do
  @allelements=all(".social-media-icon")
  @expected_PI =@allelements[2].find("a")["href"]
  first(".social-nav").find(".icon.icon-pinterest").click
end

Then(/^Pinterest home page should display$/) do
  first_window= page.driver.browser.window_handles.first

  new_window = page.driver.browser.window_handles.last

  page.driver.browser.switch_to.window new_window

  expect("http://www.pinterest.com/experiencetvl/").to match @expected_PI
   page.driver.browser.close
page.driver.browser.switch_to.window first_window
end


#ExpSearch 
When(/^I click Search icon$/) do
   @expected_SE =first(".nav-search").find("a")["href"] 
  first(".social-nav").find(".nav-search").find("a").click
end
 
Then(/^Search page should display$/) do
  expect(current_url).to match @expected_SE
  page.evaluate_script('window.history.back()')
end

















