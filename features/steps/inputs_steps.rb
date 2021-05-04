Given("que acesso a tela Botões de rádio") do
  @home_screen.tep_hamburger
  @navigator.tap_by_text("INPUTS")
  @navigator.tap_by_text("BOTÕES DE RADIO")
end

When("eu escolho a opção {string}") do |text|
  @radio = text
  @radio_button.select_button(@radio)
end

Then("essa opção deve ser marcada") do
  expect(@radio_check.radio_button(@radio).checked).to eql "true"
end

Given("que acesso a tela Checkbox") do
  @home_screen.tep_hamburger
  @navigator.tap_by_text("INPUTS")
  @navigator.tap_by_text("CHECKBOX")
end

When("eu marco a opção {string}") do |text|
  @check = text
  @checkbox.checkbox(@check)
end

Then ("essa opção deve estar marcada") do
  expect(@radio_check.checkbox(@check).checked).to eql "true"
end

When("eu marco as seguintes techs:") do |techs|
  @techs = techs.hashes

  @techs.each do |item|
    check_locator = @checkbox.checkbox(item["techs"])
  end
end

Then ("todas essas opções devem estar marcadas") do
  @techs.each do |item|
    check_locator = @radio_check.checkbox(item["techs"])
    expect(check_locator.checked).to eql "true"
  end
end
