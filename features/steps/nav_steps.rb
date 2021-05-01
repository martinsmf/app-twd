Quando("acesso o Menu") do
  @home_screen.tep_hamburger
end

Então("vejo a lista de opções de navegação") do
  expect(@navigator.menu.displayed?).to be true
end
