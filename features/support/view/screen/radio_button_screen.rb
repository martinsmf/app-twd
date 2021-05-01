class RadioButtonScreen
  def initialize
    @radio_button = Checks.new
  end

  def select_button(button)
    @radio_button.radio_button(button).click
  end
end
