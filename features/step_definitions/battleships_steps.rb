Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button button
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |textbox, entry|
  fill_in textbox, with: entry
end

# Then(/^I page should have "([^"]*)"$/) do |arg1|
#   expect­(pa­ge).to have_s­ele­cto­r('­h1')
# end

And(/^I page should have "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

