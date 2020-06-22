# frozen_string_literal: true

Dado('que estou na página inicial') do
  @home_page.go
end

Dado('que estou logado com {string}') do |usuario|
  @account_user = CONFIG['users'][usuario]
  @login_page.go
  @login_page.with(@account_user['email'], @account_user['pass'])
end
