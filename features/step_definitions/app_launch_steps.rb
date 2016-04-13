require 'calabash-android/calabash_steps'

Given(/^I am on the Home Screen$/) do
  @app.home_screen.await
#  if @app.home_screen.home_state == false
#    fail("App failed to launch")
#  end
end

#Then(/^I take a screenshot$/) do
#  screenshot_embed
#end
