class NavmenuScreen < Testmunk::Android::Screen

  view :left_menu, {id: 'left_drawer'}
  view :nav_shows, {marked:'SHOWS'}
  view :nav_episodes, {marked:'EPISODES'}
  view :nav_schedule, {marked:'SCHEDULE'}

  def traits
    [nav_shows, nav_episodes, nav_schedule]
  end

  def menu_close
    perform_action('swipe', 'right')
    sleep 2
  end

end