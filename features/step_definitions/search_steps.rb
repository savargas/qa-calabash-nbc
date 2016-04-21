Then(/^I should see the search field$/) do
  wait_for(:timeout => 60) { element_exists(@app.search_screen.search_field.uiquery) }
end

And(/^I close the search field$/) do
  @app.search_screen.search_close.await
  @app.search_screen.search_close.touch
end

When(/^I enter "([^"]*)" into the text field$/) do |search_term|
  wait_for_keyboard()
  @app.search_screen.search_field.insert_text(search_term)
end

Then(/^I should see results with the text "([^"]*)"$/) do |search_term|
  @app.search_screen.search_results(search_term).await
end

But(/^I should not see the search field$/) do
  check_element_does_not_exist(@app.search_screen.search_field.uiquery)
end

Then(/^I see the message "([^"]*)"$/) do |no_result|
  @app.search_screen.search_results(no_result).await
end