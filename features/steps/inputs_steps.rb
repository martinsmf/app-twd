Given("que acesso a tela Botões de rádio") do
  @home_screen.tep_hamburger
  @navigator.tap_by_text("INPUTS")
  @navigator.tap_by_text("BOTÕES DE RADIO")
end

When("eu excolo a opção {string}") do |text|
  @language = text
  @radio_button.select_button(@language)
end

Then("essa opição deve ser marcada") do
  expect(@radio_check.radio_button(@language).checked).to eql "true"
end
