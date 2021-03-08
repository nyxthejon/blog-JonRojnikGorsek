module NewsHelper
  def display_news_links(news)
    html = link_to 'Preberi več', news , class: 'stretched link'

    html.html_safe
  end

  def display_news_show_links(news)
    html = ""
    if current_user == news.user
      html += link_to 'Uredi', edit_news_path(news) , class: "btn btn-lg btn-primary"
      html += " ";
      html += link_to 'Izbriši', news, method: :delete, data: { confirm: 'Are you sure?' } , class: "btn btn-lg btn-primary"
      html += " ";
    end
    html += link_to 'Nazaj', news_index_path, class: "btn btn-lg btn-primary"
    html.html_safe
  end
end
