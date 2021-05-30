# language: pt

Funcionalidade: Buscas no Fake Ecommerce
  Como um cliente do site Fake Ecommerce
  Gostaria de poder buscar por produtos
  Para customizar as compras

  Contexto:
  Dado que esteja na página inicial

  @buscar_por_termo_valido
  Cenário: Buscar por termo válido
  Quando buscar pelo produto 'shirt'
  Então devem ser retornados produtos

  @busca_sem_resultados   
  Cenário: Busca sem resultados
  Quando buscar pelo produto 'Ventilador'
  Então deve ser retornado nenhum produto
  
  @buscar_mais_produtos
  Cenário: Buscar mais de um produto
  Quando buscar pelo produto 'Casual'
  Então deve ser retornado mais de um produto
