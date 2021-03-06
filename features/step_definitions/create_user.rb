# frozen_string_literal: true

Então('devo criar um novo usuário') do
  @home_page.click_signup
  @account_create.create_account
end

Então('devo estar logado com o usuário criado') do
  @account_page.alert_check
end
