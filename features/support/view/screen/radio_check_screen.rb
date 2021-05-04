class RadioButtonScreen
  def initialize
    @radio_button = Checks.new
  end

  def select_button(button)
    @radio_button.radio_button(button).click
  end
end

class CheckBoxScreen
  def initialize
    @checkbox = Checks.new
  end

  def checkbox(check)
    @checkbox.checkbox(check).click
  end
end
