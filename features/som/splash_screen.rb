class SplashScreen < Testmunk::Android::Screen

  view :splash, {id: 'splash_layout'}

  def traits
    splash
  end

end