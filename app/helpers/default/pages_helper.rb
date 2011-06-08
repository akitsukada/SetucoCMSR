module Default::PagesHelper

  def sanitize_showpage contents
    allowed_tags = %w(
      br p a b i u font strike
      h1 h2 h3 h4 h5 h6 h7
      blockquote
      ul ol li
      img
    )
    allowed_attributes = %w(
      style
      src
      alt
      title
      color
      size
    )
    sanitize(contents,
             :tags => allowed_tags,
             :attributes => allowed_attributes)
  end
end
