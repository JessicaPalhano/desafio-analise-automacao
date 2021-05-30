Dado('que acesso o cadastro de usuário') do
  @login_page.load
end

  
Dado('preencho os campos com os dados') do |query|
  @email = query.rows_hash["email"]
  @senha = query.rows_hash["senha"]

  @login_page.email(@email)
  @login_page.senha(@senha)
end

Quando('confirmo dados cadastrais') do
find('.icon-lock').click

end

Então('acesso na minha conta') do
  expect(@login_page).to have_content 'MY ACCOUNT'
  sleep(3)
end


Então ('não consigo acessar minha conta') do
  expect(@login_page).to have_content 'error'
  sleep(3)
end

