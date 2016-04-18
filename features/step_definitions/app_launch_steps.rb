require 'calabash-android/calabash_steps'

Given(/^I am on the Home Screen$/) do
  @app.home_screen.await
  if @app.home_screen.home_screen_state == false
     fail("App failed to launch")
  end
end

Then(/^I see the carousel$/) do
  @app.home_screen.carousel.await
  if @app.home_screen.carousel_state == false
    fail("Carousel is not displaying")
  end
end

Then(/^I see the Series Title$/) do
  @app.home_screen.series_title.await
end

When(/^I tap on the hamburger menu$/) do
  @app.home_screen.menu_button.touch
end

When(/^I close the hamburger menu$/) do
  @app.navmenu_screen.menu_close
end

Then(/^I see the left menu$/) do
  @app.navmenu_screen.left_menu.await
end

Given(/^I am on the Splash Screen$/) do
  @app.splash_screen.splash.await
end

Then(/^I see all menu options$/) do
  @app.navmenu_screen.await
end

# And(/^I swipe the carousel until the end$/) do
#   pending
# end

# Video feature has been removed from this demo
# And(/^I tap on video play button$/) do
#   @app.home_screen.episode_play.await
#   @app.home_screen.episode_play.touch
# end
#
# Then(/^I verify video is playing$/) do
#   @app.video_screen.video_display.await
# end


