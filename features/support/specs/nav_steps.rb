Quando("acesso o Menu") do
  @home_components.burger.click
end

Então("vejo a lista de opções de navegação") do
  expect(@menu_components.menu.displayed?).to be true
end
