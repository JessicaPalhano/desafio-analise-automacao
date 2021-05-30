Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
  sleep(3)
end

Então("deve ser retornado nenhum produto") do
  @texto = find('.heading-counter')
  expect(@texto.text).to eql '0 results have been found.' 
  sleep(3) 
end

Então("deve ser retornado mais de um produto") do
  expect(@search_page.products[1]).to have_image
  expect(@search_page.products[1]).to have_name
  sleep(3)  
end









