Given("que acesso a tela Avengers") do
  @home_screen.tep_hamburger
  @navigator.tap_by_text("AVENGERS")
  @navigator.tap_by_text("LISTA")
end

When("apago o capitão america") do
  @avengers_screen.swipe
  @avengers_screen.remov_hero
end

Then("devo ver a seguinte mensagem: {string}") do |string|
  expect(@avengers_componente.snackbar.text).to eql string
end
