Quando("acesso o Menu") do
  @home_screen.tep_hamburger
end

Então("vejo a lista de opções de navegação") do
  expect(@menu_components.menu.displayed?).to be true
end
