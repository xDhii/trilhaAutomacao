# frozen_string_literal: true

Quando('escolho o produto {string}') do |produto|
  @home_page.go
  @catalog_page.search(produto)
  @product_page.add_to_cart(produto)
end

Então('finalizo a compra e gero o pedido') do
  @checkout_page.go
  @checkout_page.fill_checkout_address
end
