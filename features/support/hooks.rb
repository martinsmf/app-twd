Before do
  @home_components = HomeComponents.new
  @home_screen = HomeScreen.new
  @navigator = Navigator.new
  @login = LoginScreen.new
  @login_components = LoginComponents.new
  @radio_button = RadioButtonScreen.new
  @radio_check = Checks.new

  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10
  # evendo de click no botão começar
  find_element(xpath: "//android.widget.Button[@text='COMEÇAR']").click
end

After do |scenario|
  binary_shot = driver.screenshot_as(:base64)

  temp_shot = "logs/temp_shot.png"

  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
  driver.quit_driver
end
