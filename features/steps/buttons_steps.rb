Given("que acesso a tela Click simples") do
  @home_screen.tep_hamburger
  @navigator.tap_by_text("BOTÕES")
  @navigator.tap_by_text("CLIQUE SIMPLES")
end

When("faço um click simples") do
  @button_scree.click_aqui_simples
end

Then("devo ver o texto: {string}") do |string|
  expect(@navigator.toast.text).to eql string
end

Given("que estou na tela de clicke longo") do
  @home_screen.tep_hamburger
  @navigator.tap_by_text("BOTÕES")
  @navigator.tap_by_text("CLIQUE LONGO")
end

When("faço um clicke longo") do
  @button_scree.clic_aqui_longo
end

Then("devo ver o botão com o texto: {string}") do |string|
  expect(@button_componente.button_click_longo.text).to eql string
end
