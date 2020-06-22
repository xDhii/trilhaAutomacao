# frozen_string_literal: true

Quando('escolho o produto {string}') do |_produto|
  @home_page.go
  @home_page.search(_produto)
  sleep 10
end

Então('finalizo a compra e gero o pedido') do
  pending # Write code here that turns the phrase above into concrete actions
end
