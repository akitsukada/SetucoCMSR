module Default::KeywordHelper

  def highlight_keyword text,keyword
    highlight(
      sanitize(text,:tags => %w(br p a), :attributes => %w(id class href)),
      keyword,
      :highlighter => '<span style="background-color:yellow;font-weight:bold;">\1</span>'
    )
  end
end
