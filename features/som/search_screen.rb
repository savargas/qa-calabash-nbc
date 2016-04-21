class SearchScreen < Testmunk::Android::Screen

  field :search_field, {id:'search_src_text'}
  button :search_close, {id:'search_close_btn'}

  def search_results(title)
    view({marked:title})
  end
end
