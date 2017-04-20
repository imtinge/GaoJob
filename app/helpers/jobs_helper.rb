module JobsHelper
  def render_highlight_content(content, query_string)
    excerpt_cont = excerpt(content, query_string, radius: 500)
    if excerpt_cont
      highlight(excerpt_cont, query_string)
    else
      content
    end
  end
end
