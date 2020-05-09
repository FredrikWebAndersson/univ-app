module ApplicationHelper

  def session_link
    if !logged_in?
      link_to("Log In", login_path)
      link_to("Sign up", new_student_path) 
    else
      link_to("Log out", logout_path, method: :delete) 
    end
  end 

end
