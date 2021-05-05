Given("que acesso a tela de login") do
  @home_screen.tep_hamburger
  @navigator.tap_by_text("FORMS")
  @navigator.tap_by_text("LOGIN")
end

When("submento minhas credenciais:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  user = table.rows_hash
  @login.sign_in(user[:email], user[:senha])
end

Then("devo ver a notificação: {string}") do |notification|
  #   log(get_source) pegar o xml da tela
  expect(@navigator.toast.text).to eql notification
end
