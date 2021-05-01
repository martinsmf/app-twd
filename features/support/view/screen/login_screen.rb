class LoginScreen
  attr_accessor :login_components

  def initialize
    @login_components = LoginComponents.new
  end

  def sign_in(email, password)
    @login_components.field_login.send_keys(email)
    @login_components.field_password.send_keys(password)
    @login_components.button_enter.click
  end
end
