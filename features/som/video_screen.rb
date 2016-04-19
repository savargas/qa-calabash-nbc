class VideoScreen < Testmunk::Android::Screen

  view :video_display, {id: 'video_frame'}

  def traits
    video_display
  end

end