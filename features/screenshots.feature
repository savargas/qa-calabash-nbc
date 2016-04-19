Feature: Launch the app and take screenshots on various screens to verify how the app displays on different device
  screen sizes including tablets and rotation scenarios.

@launch
  Scenario: Launch the app and swipe up
    Given I am on the Home Screen
    When I swipe up 2 times
    Then I see the Series Title
      But I should not see "slide_date"
    When I swipe down 4 times
    Then I see the carousel

  @menu_open_close
  Scenario: Open and close the Hamburger Menu
    Given I am on the Home Screen
    When I tap on the hamburger menu
    Then I see the left menu
    When I close the hamburger menu
    Then I am on the Home Screen

  @menu_nav
  Scenario: Open the Hamburger Menu and verify menu items are shown
    Given I am on the Home Screen
    When I tap on the hamburger menu
      And I see the left menu
    Then I see all menu options


  @rotate_home
  Scenario: Rotate the device on the home screen
    Given I am on the Home Screen
    When I rotate the device in landscape orientation
    Then I see the carousel

  @rotate_menu
  Scenario: Rotate the device, Open and close the Menu
    Given I am on the Home Screen
    When I rotate the device in landscape orientation
      And I tap on the hamburger menu
    Then I see the left menu
    When I close the hamburger menu
    Then I see the carousel

  @rotate_both
  Scenario: Rotate the device twice on the home screen and verify the home screen and carousel are still shown
    Given I am on the Home Screen
    When I rotate the device in landscape orientation
    Then I see the carousel
    When I rotate the device in portrait orientation
    Then I am on the Home Screen

  @rotate_swipe
  Scenario: Rotate device to landscape then back to portrait and verify no extra Carousel items
    Given I am on the Home Screen
    When I rotate the device in landscape orientation
      And I see the carousel
    When I rotate the device in portrait orientation
    And I swipe the carousel right until the end
    Then I should not see an empty carousel item

  @swipe_to_end
  Scenario: Swipe the carousel right until reaching the end
    Given I am on the Home Screen
    When I swipe the carousel right until the end
    Then I should not see an empty carousel item
      And I take a screenshot

  @swipe_to_end_and_start
  Scenario: Swipe the carousel right until reaching the end then swipe left to the beginning
    Given I am on the Home Screen
    When I swipe the carousel right until the end
    Then I should not see an empty carousel item
      And I take a screenshot
    When I swipe the carousel left until the end
    Then I should not see an empty carousel item
      And I take a screenshot



#  Scenario: Tap on Video and take a screenshot
#    Given I am on the Home Screen
#    And I tap on video play button
#    Then I verify video is playing
#    And I take a screenshot

#  Scenario: Rotate the device during video playback and take a screenshot
#    Given I am on the Home Screen
#    And I tap on video play button
#    Then I verify video is playing
#    And I rotate the device in landscape orientation
#    Then I take a screenshot



#  @rotate_splash
#  Scenario: Rotate the device on the splash screen and take a screenshot
#    Given I am on the Splash Screen
#    And I rotate the device in landscape orientation
#    Then I take a screenshot
#    And I am on the Home Screen