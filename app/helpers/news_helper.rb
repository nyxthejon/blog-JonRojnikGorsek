module NewsHelper
  def display_news_links(news)
    html = link_to 'Preberi več', news , class: 'stretched link'

    html.html_safe
  end

  def display_news_show_links(news)
    html = ""
    if current_user == news.user
      html += link_to 'Uredi', edit_news_path(news)
      html += ' | '
      html += link_to 'Izbriši', news, method: :delete, data: { confirm: 'Are you sure?' }
      html += ' | '
    end
    html += link_to 'Back', news_index_path
    html.html_safe
  end
end
