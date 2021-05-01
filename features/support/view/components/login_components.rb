class LoginComponents
  def field_login
    return find_element(id: "io.qaninja.android.twp:id/etEmail")
  end

  def field_password
    return find_element(id: "io.qaninja.android.twp:id/etPassword")
  end

  def button_enter
    return find_element(id: "io.qaninja.android.twp:id/btnSubmit")
  end

  def toast
    return find_element(xpath: "//android.widget.Toast")
  end
end
