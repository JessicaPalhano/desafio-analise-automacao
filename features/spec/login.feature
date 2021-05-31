# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente cadastrado no Ecommerce Fake
  Quero realizar login
  Para acessar minha conta

  @realizar_login
  Cenário: Realizar login
  Dado que acesso o cadastro de usuário
  E preencho os campos com os dados 
  |email|showdaxuxa@teste.com|
  |senha|teste123|
  Quando confirmo dados cadastrais
  Então acesso na minha conta

  @login_com_falha
  Cenário: Realizar login com falha
  Dado que acesso o cadastro de usuário
  E preencho os campos com os dados
  |email|ratinho@teste.com| 
  |senha|teste123|
  Quando confirmo dados cadastrais
  Então não consigo acessar minha conta

