
When (/^I visit the Experience home page$/) do
	visit ("http://experience.usatoday.com/beach/") #got to beach site 
end

Given(/^I am on the Experience home page$/) do
	expect(page).to have_css('#experience-footer') #check for the footer
end


#----Verifying destinations navigation in footer------
When(/^I click on top (.*?)$/) do |destination| #Clicking different destination 
  puts "Going to click: " +  destination
  find(".cities").find_link(destination).click
end

Then(/^destination (.*?) should display$/) do |description| # Verifying text in the destination page
  puts "Going to check: " +  description
  expect(page).to have_content(description)
end


#--Verifying Beach front navigation in footer----

When(/^I click on beach (.*?)$/) do |front|  #Clicking beach front
  puts "Going to click: " +  front
  find(".footer-site-nav").find_link(front).click
end

Then(/^beach (.*?) should display$/) do |frontdescription| #Verifying beach front text
  puts "Going to check: " +  frontdescription
  expect(page).to have_content(frontdescription)
end

When(/^I click on beach1 (.*?)$/) do |front1| #Clicking beach front which opens in new window
  puts "Going to click: " +  front1
  find(".footer-site-nav").find_link(front1).click
end

Then(/^beach1 (.*?) should display$/) do |frontdescription1| #Verifying beach front text in new window
  puts "Going to check: " +  frontdescription1
  first_window= page.driver.browser.window_handles.first

  new_window = page.driver.browser.window_handles.last

  page.driver.browser.switch_to.window new_window
  expect(page).to have_content(frontdescription1)
   page.driver.browser.close

   page.driver.browser.switch_to.window first_window
  
end
#--Verifying Experience site navigation in footer---

When(/^I click on any (.*?)$/) do |site|   #Clicking experience site 
  puts "Going to click: " +  site
  find(".experience-sites").find_link(site).click
end

Then(/^The experience (.*?) should display$/) do |sitedescription| #Verifying Experience site text
  puts "Going to check: " +  sitedescription
    first_window= page.driver.browser.window_handles.first

  new_window = page.driver.browser.window_handles.last

  page.driver.browser.switch_to.window new_window
  expect(page).to have_content(sitedescription)
   page.driver.browser.close

   page.driver.browser.switch_to.window first_window
end

#--Verifying static page navigation in footer---
When(/^I click static (.*?)$/) do |page|  #Clicking static page 
  puts "Going to click: " +  page
  find(".copyrights").find_link(page).click
end

Then(/^The static (.*?) should display$/) do |pagedescription| #Clicking static page text
  puts "Going to check: " +  pagedescription
  expect(page).to have_content(pagedescription)
   
end

When(/^I click static1 (.*?)$/) do |page1| #Clicking static page which opens in new window
  puts "Going to click: " +  page1
  find(".copyrights").find_link(page1).click
end

Then(/^The static1 (.*?) should display$/) do |pagedescription1| #Verifying static page text in new window
  puts "Going to check: " +  pagedescription1
    first_window= page.driver.browser.window_handles.first

  new_window = page.driver.browser.window_handles.last

  page.driver.browser.switch_to.window new_window
  expect(page).to have_content(pagedescription1)
   page.driver.browser.close

   page.driver.browser.switch_to.window first_window
end






#When(/^I click on any of the following destination and description:$/) do |table|
#    table.hashes.each do |row|
#      destination_option= row['destination']
#      find(".cities").find_link(destination_option).click
#      @destination_text= row['description']
#    end
#end

#Then(/^The corresponding description should display$/) do     #checking text in each front
#  #require 'debug'
#  puts "checking for " + @destination_text
#  expect(page).to have_content(@destination_text)
#end

