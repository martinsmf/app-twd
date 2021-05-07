require_relative "../components/login_components.rb"

class LoginScreen < LoginComponents
  def sign_in(email, password)
    field_login.send_keys(email)
    field_password.send_keys(password)
    button_enter.click
  end
end
