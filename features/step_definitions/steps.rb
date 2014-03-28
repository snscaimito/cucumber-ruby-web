When(/^I search on Google for "([^"]*)"$/) do |search_term|
  visit(GooglePage).search_for(search_term)
end

Then(/^I will see search results$/) do
  sleep 2
  on(GooglePage).search_results_element.should exist
end
