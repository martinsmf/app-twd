class ButtonScreen
  def initialize
    @button = ButtonComponentes.new
  end

  def click_aqui_simples
    @button.button_click_simples.click
  end

  def clic_aqui_longo
    Appium::TouchAction.new.press(element: @button.button_click_longo).wait(2000).release.perform
  end
end
