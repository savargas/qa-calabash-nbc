class HomeScreen < Testmunk::Android::Screen

  view :carousel, {id: 'carousel_image'}
  button :menu_button, {marked: 'NBC'}

  def traits
    [carousel, menu_button]
  end

end