# frozen_string_literal: true

Dado('que estou na página inicial') do
  @home_page.go
  @home_page.click_signup
  sleep 5
end

Então('devo criar um novo usuário') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('devo estar logado com o usuário criado') do
  pending # Write code here that turns the phrase above into concrete actions
end
