class HomeScreen < Testmunk::Android::Screen

  view :carousel, {id: 'slide_date'}
  button :menu_button, {marked: 'NBC'}
  view :episode_thumbnail, {id:'episode_thumbnail'}
  button :episode_play, {id:'episode_play_button'}
  view :series_title, {id:'series_title'}
  view :carousel_description, {id: 'slide_description'}

  def traits
    [carousel, menu_button]
  end

  def home_screen_state
    episode_thumbnail
  end

  def carousel_state
    carousel
  end

  def carousel_description_state
    carousel_description
  end

  def swipe_until_end(dir)
    prev_screen_state = query('*')
    current_screen_state = []

    while (prev_screen_state != current_screen_state)
      current_screen_state = prev_screen_state
      swipe_screen(dir.to_sym)
      wait_for_element_exists("carousel")
      prev_screen_state = query('*')
    end
  end


  def await
    super
    sleep(5) # for all episodes to load
  end

end