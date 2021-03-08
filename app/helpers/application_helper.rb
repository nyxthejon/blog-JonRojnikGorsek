module ApplicationHelper
  def display_navbar_options

      html = ""
      if user_signed_in?
        html += link_to "Uredi Profil", edit_user_registration_path, class: 'btn btn-sm btn-outline-secondary'
        html += link_to "Odjava" , destroy_user_session_path, method: :delete, class: 'btn btn-sm btn-outline-secondary'
      else
        html += link_to "Prijava" , new_user_session_path, class: 'btn btn-sm btn-outline-secondary'
        html += link_to "Registracija" , new_user_registration_path, class: 'btn btn-sm btn-outline-secondary'
      end


      html.html_safe
    end
end
