module PostsHelper
  def display_posts_links(post)
    html = link_to 'Preberi več', post , class: 'stretched link'

    html.html_safe
  end

  def display_posts_show_links(post)
    html = ""
    if current_user == post.user
      html += link_to 'Uredi', edit_post_path(post)
      html += ' | '
      html += link_to 'Izbriši', post, method: :delete, data: { confirm: 'Are you sure?' }
      html += ' | '
    end
    html += link_to 'Nazaj', posts_path
    html.html_safe
  end
end
