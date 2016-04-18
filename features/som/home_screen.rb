class HomeScreen < Testmunk::Android::Screen

  view :carousel, {id: 'slide_date'}
  button :menu_button, {marked: 'NBC'}
  view :episode_thumbnail, {id:'episode_thumbnail'}
  button :episode_play, {id:'episode_play_button'}
  view :series_title, {id:'series_title'}

  def traits
    [carousel, menu_button]
  end

  def home_screen_state
    query("* id:'episode_thumbnail'")[0]["visible"]
  end

  def carousel_state
    [carousel]
  end

  def await
    super
    sleep(5) # for all episodes to load
  end

end