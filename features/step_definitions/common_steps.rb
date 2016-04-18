
When(/^I rotate the device in ([^"]*) orientation$/) do |orientation|
  @app.home_screen.rotate_screen(orientation.to_sym)
  sleep(4)
end


When(/^I swipe ([^"]*) (\d+) time(?:s)?$/) do |direction, count|
  count = count.to_i
  count.times {@app.home_screen.swipe_screen(direction.to_sym)}
end