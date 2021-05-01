class Checks
  def radio_button(button)
    return find_element(xpath: "//android.widget.RadioButton[contains(@text, '#{button}')]")
  end
end
